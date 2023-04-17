@echo off
cls
Set Sleep=0
:start
if %Sleep% == 20 ( goto end )
roslaunch ../test_map.launch goal_x:=100 goal_y:=100 map_file:="$(find dynamic_logistics_warehouse)/maps//005/map.yaml" fileName:="DynamicWarehouse/dynamic_logistics_Warehouse_map_%Sleep%.csv" worldFile:="$(find dynamic_logistics_warehouse)/launch/logistics_warehouse.launch"
Set %Sleep%+=1
echo %Sleep%
goto start
:end
echo "FINISHED!!"