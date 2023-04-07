execute_process(COMMAND "C:/ws/turtlebot3/build/turtlebot3/turtlebot3/turtlebot3_teleop/catkin_generated/python_distutils_install.bat" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(C:/ws/turtlebot3/build/turtlebot3/turtlebot3/turtlebot3_teleop/catkin_generated/python_distutils_install.bat) returned error code ")
endif()
