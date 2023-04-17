@echo off
cls
Set Sleep=0
:start
if %Sleep% == 20 ( goto end )
roslaunch ../test.launch goal_x:=100 goal_y:=100 fileName:="house.csv" worldFile:="$(find turtlebot3_gazebo)/launch/turtlebot3_house.launch"
echo %Sleep%
Set Sleep+=1
goto start
:end
echo "FINISHED!!"