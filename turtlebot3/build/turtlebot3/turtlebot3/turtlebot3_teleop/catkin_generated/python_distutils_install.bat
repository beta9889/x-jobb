@echo off

if DEFINED DESTDIR (
  echo "Destdir.............%DESTDIR%"
  set DESTDIR_ARG="--root=%DESTDIR%"
)

cd "C:/ws/turtlebot3/src/turtlebot3/turtlebot3/turtlebot3_teleop"

if NOT EXIST "C:\ws\turtlebot3\install\lib/site-packages\" (
  mkdir "C:\ws\turtlebot3\install\lib/site-packages"
)

set "PYTHONPATH=C:\ws\turtlebot3\install\lib/site-packages;C:/ws/turtlebot3/build\lib/site-packages"
set "CATKIN_BINARY_DIR=C:/ws/turtlebot3/build"
for /f "usebackq tokens=*" %%a in ('C:\ws\turtlebot3\install') do (
  set _SETUPTOOLS_INSTALL_PATH=%%~pna
  set _SETUPTOOLS_INSTALL_ROOT=%%~da
)

"C:/opt/ros/melodic/x64/python.exe" ^
    "C:/ws/turtlebot3/src/turtlebot3/turtlebot3/turtlebot3_teleop\setup.py" ^
    build --build-base "C:/ws/turtlebot3/build/turtlebot3/turtlebot3/turtlebot3_teleop" ^
    install %DESTDIR_ARG%  ^
    --prefix="%_SETUPTOOLS_INSTALL_PATH%" ^
    --install-scripts="%_SETUPTOOLS_INSTALL_PATH%\bin" ^
    --root=%_SETUPTOOLS_INSTALL_ROOT%\
