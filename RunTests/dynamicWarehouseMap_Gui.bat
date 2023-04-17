@echo off
cls
Set Sleep=0
:start
if %Sleep% == 20 ( goto end )
roslaunch ../test_map.launch goal_x:=100 goal_y:=100 gui:=true map_file:="$(find dynamic_logistics_warehouse)/maps//005/map.yaml" fileName:="dynamic_logistics_Warehouse_map.csv" worldFile:="$(find dynamic_logistics_warehouse)/launch/logistics_warehouse.launch"
Set Sleep+=1
echo %Sleep%
goto start
:end
echo "FINISHED!!"