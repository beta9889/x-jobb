@echo off
cls
Set Sleep=0
:start
if %Sleep% == 20 ( goto end )
Set filename="house_map_"%Sleep%".yaml"
roslaunch ../test_map.launch goal_x:=100 goal_y:=100 map_file:="$(find turtlebot3_navigation)\maps\house.yaml" fileName:=filename worldFile:="$(find turtlebot3_gazebo)/launch/turtlebot3_house.launch"
echo %Sleep%
Set Sleep+=1
goto start
:end
echo "FINISHED!!"