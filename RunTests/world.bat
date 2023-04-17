@echo off
cls
Set Sleep=0
:start
if %Sleep% == 10 ( goto end )
roslaunch ../test.launch goal_x:=0.5 goal_y:=1 fileName:="World/world_%Sleep%.csv"
echo Finished the test launch file
echo %Sleep%
Set /A Sleep+=1
goto start
:end
echo "FINISHED!!"