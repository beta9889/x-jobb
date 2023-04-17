@echo off
cls
Set Sleep=0
:start
if %Sleep% == 20 ( goto end )
roslaunch ../test.launch goal_x:=100 goal_y:=100 fileName:="DynamicWarehouse/dynamic_logistics_Warehouse_%Sleep%.csv" worldFile:="$(find dynamic_logistics_warehouse)/launch/logistics_warehouse.launch"
Set Sleep+=1
echo %Sleep%
goto start
:end
echo "FINISHED!!"