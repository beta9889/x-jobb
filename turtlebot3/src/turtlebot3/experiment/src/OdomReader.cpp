#include "ros/ros.h"
#include "nav_msgs/Odometry.h"
#include "move_base_msgs/MoveBaseActionResult.h"
#include <move_base_msgs/MoveBaseAction.h>
#include <actionlib/client/simple_action_client.h>
#include <iostream>
#include <fstream>
#include <math.h>

typedef actionlib::SimpleActionClient<move_base_msgs::MoveBaseAction> MoveBaseClient;
typedef actionlib::SimpleActionClient<move_base_msgs::MoveBaseAction> MoveBaseClient;
enum Egoal{x,y};
enum Quadrant{first,second,third,forth};
std::ofstream result;
std::ofstream destination;

uint8_t successStatus = 3;
uint8_t abortStatus = 4;
double goal[2];
double maxGoal[2];
double current[2];
double maxHypotenusa;
int odomReaderCount = 0;
MoveBaseClient* ac;

move_base_msgs::MoveBaseGoal setGoal(double X,double Y){
  move_base_msgs::MoveBaseGoal moveBaseGoal;
  moveBaseGoal.target_pose.header.frame_id = "map";
  moveBaseGoal.target_pose.header.stamp = ros::Time::now();
  moveBaseGoal.target_pose.pose.position.x = X;
  moveBaseGoal.target_pose.pose.position.y = Y;
  moveBaseGoal.target_pose.pose.orientation.w = 1.0;
  return moveBaseGoal;
}

Quadrant checkgoalToCostmap(double newGoal[]){
Quadrant result = first;

return result;
}

void SetNewGoalSin()
{
  double newOrigin[] = {NULL,NULL};
  newOrigin[x] = current[x] > 0 ? goal[x] + current[x] : goal[x] - current[x];
  newOrigin[y] = current[y] > 0 ? goal[y] + current[y] : goal[y] - current[y];
  double newGoal[] = {NULL,NULL};
  newGoal[x] = maxGoal[x] * cos((atan2(newOrigin[y],newOrigin[x]) * 180/M_PI));
  newGoal[y] = maxGoal[y] * sin((atan2(newOrigin[y],newOrigin[x])* 180/M_PI));
  result << ",New Goal x," << newGoal[x] << ",New Goal Y," << newGoal[y];
  while(!ac->waitForServer(ros::Duration(0.5))){}
  ac->sendGoal(setGoal(newGoal[x],newGoal[y]));
}

void setNewGoalHypotenusa()
{
  double newOrigin[] = {
    current[x] > 0 ? goal[x] + current[x] : goal[x] - current[x],
    current[y] > 0 ? goal[y] + current[y] : goal[y] - current[y]
  };
  double hypotenusaCompare = sqrt((newOrigin[x] * newOrigin[x]) + (newOrigin[y] * newOrigin[y]));
  double hypotenusa = sqrt((goal[x] * goal[x]) + (goal[y] * goal[y]));
  if (hypotenusaCompare <= maxHypotenusa){
    result << "," << goal[x] << "," << goal[y];
    ac->sendGoal(setGoal(goal[x],goal[y]));
    return;
  }
  double ratio = hypotenusa / maxHypotenusa;
  double newGoal[] = {goal[x] / ratio, goal[y] / ratio };
  result << "," << current[x] + newGoal[x] << "," << current[y] +newGoal[y];
  ac->sendGoal(setGoal(current[x] + newGoal[x],current[y] +newGoal[y]));
}

void OdomSave(const nav_msgs::Odometry::ConstPtr& msg)
{
  result << msg->header.stamp;
  result << ",";
  result << msg->pose.pose.position.x;
  result << ",";
  result << msg->pose.pose.position.y;
  result << ",";
  result << msg->pose.pose.position.z;
  result << ","; 
  result << msg->pose.pose.orientation.x;
  result << ",";
  result << msg->pose.pose.orientation.y;
  result << ",";
  result << msg->pose.pose.orientation.z;
  
  current[x] = msg->pose.pose.position.x;
  current[y] = msg->pose.pose.position.y;

  if((odomReaderCount % 20 )== 0){ 
    setNewGoalHypotenusa();
    odomReaderCount = 0;
  }
  odomReaderCount++;
  result << "\n"; 
}

void getStatus(const actionlib_msgs::GoalStatusArray::ConstPtr& msg){
  if(msg->status_list.empty()) return;
  if((msg->status_list[0].status != msg->status_list[0].SUCCEEDED  && msg->status_list[0].status != msg->status_list[0].ABORTED )) return;
  bool statusValue = msg->status_list[0].status != msg->status_list[0].SUCCEEDED ? msg->status_list[0].SUCCEEDED : msg->status_list[0].ABORTED;
  result <<"\n \n finished with status, " << statusValue;
  result.close();
  ros::shutdown();
}

void setupFiles(ros::NodeHandle n){
  std::string fileLocation;
  n.getParam("/experiment/fileName",fileLocation);
  result.open(fileLocation);
  result << "sep=, \n";
  n.getParam("/experiment/goal_x", goal[x]);
  n.getParam("/experiment/goal_y", goal[y]);
  n.getParam("/experiment/maxGoal_x", maxGoal[x]);
  n.getParam("/experiment/maxGoal_y", maxGoal[y]);
  result << "final goal x ," << goal[x] << ",final Goal y," << goal[y] << std::endl;
  result << "timestamp, positionX , positionY , positionZ , orientationX , orientationY , orientationZ , destination change x, destination change y\n";  
  ac = new MoveBaseClient("move_base",true);
  maxHypotenusa = sqrt((maxGoal[x] * maxGoal[x]) + (maxGoal[y] * maxGoal[y]));
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "experiment");
  ros::NodeHandle n;
  setupFiles(n);

  while(!ac->waitForServer(ros::Duration(0.5))){}
  ros::Subscriber odomSub = n.subscribe("odom", 1000, OdomSave);
  ros::Subscriber MoveBaseResultSub = n.subscribe("/move_base/status",1000, getStatus);


  ros::spin();
  result.close();
  return 0;
}