@echo off
cls
Set Sleep=0
:start
if %Sleep% == 10 ( goto end )
roslaunch ../test_map.launch goal_x:=100 goal_y:=100 map_file:="$(find turtlebot3_navigation)\maps\map.yaml" fileName:="World/world_map_%Sleep%.csv" 
echo %Sleep%
Set /A Sleep+=1
goto start
:end
echo "FINISHED!!"