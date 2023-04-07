#include "ros/ros.h"
#include "nav_msgs/Odometry.h"
#include "move_base_msgs/MoveBaseActionResult.h"
#include <move_base_msgs/MoveBaseAction.h>
#include <actionlib/client/simple_action_client.h>
#include <iostream>
#include <fstream>

typedef actionlib::SimpleActionClient<move_base_msgs::MoveBaseAction> MoveBaseClient;
std::ofstream result;
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
  result << "\n"; 
}

move_base_msgs::MoveBaseGoal setGoal(double x, double y){
  result << "Destination: " << x << "," << y << std::endl;
  result << "timestamp, positionX , positionY , positionZ , orientationX , orientationY , orientationZ \n";  
  
  move_base_msgs::MoveBaseGoal goal;
  goal.target_pose.header.frame_id = "map";
  goal.target_pose.header.stamp = ros::Time::now();
  goal.target_pose.pose.position.x = x;
  goal.target_pose.pose.position.y = y;
  goal.target_pose.pose.orientation.w = 1.0;

  return goal;

}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "experiment");
  ros::NodeHandle n;
  ros::Subscriber sub = n.subscribe("odom", 1000, OdomSave);
  std::string fileLocation;

  n.getParam("/experiment/fileName",fileLocation);
  result.open(fileLocation);
  result << "sep=, \n";
  
  MoveBaseClient ac("move_base",true);
  double goal_x;
  double goal_y;
  n.getParam("/experiment/goal_x", goal_x);
  n.getParam("/experiment/goal_y", goal_y);
  ac.sendGoal(setGoal(goal_x,goal_y));
  ros::spin();
  result.close();
  return 0;
}