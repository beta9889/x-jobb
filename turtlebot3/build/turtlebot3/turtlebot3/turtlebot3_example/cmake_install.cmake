# Install script for directory: C:/ws/turtlebot3/src/turtlebot3/turtlebot3/turtlebot3_example

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/ws/turtlebot3/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  include("C:/ws/turtlebot3/build/turtlebot3/turtlebot3/turtlebot3_example/catkin_generated/safe_execute_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot3_example/action" TYPE FILE FILES "C:/ws/turtlebot3/src/turtlebot3/turtlebot3/turtlebot3_example/action/Turtlebot3.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot3_example/msg" TYPE FILE FILES
    "C:/ws/turtlebot3/devel/share/turtlebot3_example/msg/Turtlebot3Action.msg"
    "C:/ws/turtlebot3/devel/share/turtlebot3_example/msg/Turtlebot3ActionGoal.msg"
    "C:/ws/turtlebot3/devel/share/turtlebot3_example/msg/Turtlebot3ActionResult.msg"
    "C:/ws/turtlebot3/devel/share/turtlebot3_example/msg/Turtlebot3ActionFeedback.msg"
    "C:/ws/turtlebot3/devel/share/turtlebot3_example/msg/Turtlebot3Goal.msg"
    "C:/ws/turtlebot3/devel/share/turtlebot3_example/msg/Turtlebot3Result.msg"
    "C:/ws/turtlebot3/devel/share/turtlebot3_example/msg/Turtlebot3Feedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot3_example/cmake" TYPE FILE FILES "C:/ws/turtlebot3/build/turtlebot3/turtlebot3/turtlebot3_example/catkin_generated/installspace/turtlebot3_example-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "C:/ws/turtlebot3/devel/include/turtlebot3_example")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "C:/ws/turtlebot3/devel/share/roseus/ros/turtlebot3_example")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "C:/ws/turtlebot3/devel/share/common-lisp/ros/turtlebot3_example")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "C:/ws/turtlebot3/devel/share/gennodejs/ros/turtlebot3_example")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "C:/opt/ros/melodic/x64/python.exe" -m compileall "C:/ws/turtlebot3/devel/lib/site-packages/turtlebot3_example")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/site-packages" TYPE DIRECTORY FILES "C:/ws/turtlebot3/devel/lib/site-packages/turtlebot3_example" REGEX "/\\_\\_init\\_\\_\\.py$" EXCLUDE REGEX "/\\_\\_init\\_\\_\\.pyc$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/site-packages" TYPE DIRECTORY FILES "C:/ws/turtlebot3/devel/lib/site-packages/turtlebot3_example" FILES_MATCHING REGEX "c:/ws/turtlebot3/devel/lib/site-packages/turtlebot3_example/.+/__init__.pyc?$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "C:/ws/turtlebot3/build/turtlebot3/turtlebot3/turtlebot3_example/catkin_generated/installspace/turtlebot3_example.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot3_example/cmake" TYPE FILE FILES "C:/ws/turtlebot3/build/turtlebot3/turtlebot3/turtlebot3_example/catkin_generated/installspace/turtlebot3_example-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot3_example/cmake" TYPE FILE FILES
    "C:/ws/turtlebot3/build/turtlebot3/turtlebot3/turtlebot3_example/catkin_generated/installspace/turtlebot3_exampleConfig.cmake"
    "C:/ws/turtlebot3/build/turtlebot3/turtlebot3/turtlebot3_example/catkin_generated/installspace/turtlebot3_exampleConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot3_example" TYPE FILE FILES "C:/ws/turtlebot3/src/turtlebot3/turtlebot3/turtlebot3_example/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_example" TYPE PROGRAM FILES "C:/ws/turtlebot3/build/turtlebot3/turtlebot3/turtlebot3_example/catkin_generated/installspace/turtlebot3_obstacle")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_example" TYPE EXECUTABLE FILES "C:/ws/turtlebot3/build/turtlebot3/turtlebot3/turtlebot3_example/catkin_generated/windows_wrappers/turtlebot3_example_turtlebot3_obstacle_exec_install_python/turtlebot3_obstacle.exe")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_example" TYPE PROGRAM FILES "C:/ws/turtlebot3/build/turtlebot3/turtlebot3/turtlebot3_example/catkin_generated/installspace/turtlebot3_client")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_example" TYPE EXECUTABLE FILES "C:/ws/turtlebot3/build/turtlebot3/turtlebot3/turtlebot3_example/catkin_generated/windows_wrappers/turtlebot3_example_turtlebot3_client_exec_install_python/turtlebot3_client.exe")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_example" TYPE PROGRAM FILES "C:/ws/turtlebot3/build/turtlebot3/turtlebot3/turtlebot3_example/catkin_generated/installspace/turtlebot3_server")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_example" TYPE EXECUTABLE FILES "C:/ws/turtlebot3/build/turtlebot3/turtlebot3/turtlebot3_example/catkin_generated/windows_wrappers/turtlebot3_example_turtlebot3_server_exec_install_python/turtlebot3_server.exe")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_example" TYPE PROGRAM FILES "C:/ws/turtlebot3/build/turtlebot3/turtlebot3/turtlebot3_example/catkin_generated/installspace/turtlebot3_pointop_key")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_example" TYPE EXECUTABLE FILES "C:/ws/turtlebot3/build/turtlebot3/turtlebot3/turtlebot3_example/catkin_generated/windows_wrappers/turtlebot3_example_turtlebot3_pointop_key_exec_install_python/turtlebot3_pointop_key.exe")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_example" TYPE PROGRAM FILES "C:/ws/turtlebot3/build/turtlebot3/turtlebot3/turtlebot3_example/catkin_generated/installspace/turtlebot3_bumper")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_example" TYPE EXECUTABLE FILES "C:/ws/turtlebot3/build/turtlebot3/turtlebot3/turtlebot3_example/catkin_generated/windows_wrappers/turtlebot3_example_turtlebot3_bumper_exec_install_python/turtlebot3_bumper.exe")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_example" TYPE PROGRAM FILES "C:/ws/turtlebot3/build/turtlebot3/turtlebot3/turtlebot3_example/catkin_generated/installspace/turtlebot3_cliff")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_example" TYPE EXECUTABLE FILES "C:/ws/turtlebot3/build/turtlebot3/turtlebot3/turtlebot3_example/catkin_generated/windows_wrappers/turtlebot3_example_turtlebot3_cliff_exec_install_python/turtlebot3_cliff.exe")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_example" TYPE PROGRAM FILES "C:/ws/turtlebot3/build/turtlebot3/turtlebot3/turtlebot3_example/catkin_generated/installspace/turtlebot3_sonar")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_example" TYPE EXECUTABLE FILES "C:/ws/turtlebot3/build/turtlebot3/turtlebot3/turtlebot3_example/catkin_generated/windows_wrappers/turtlebot3_example_turtlebot3_sonar_exec_install_python/turtlebot3_sonar.exe")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_example" TYPE PROGRAM FILES "C:/ws/turtlebot3/build/turtlebot3/turtlebot3/turtlebot3_example/catkin_generated/installspace/turtlebot3_illumination")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_example" TYPE EXECUTABLE FILES "C:/ws/turtlebot3/build/turtlebot3/turtlebot3/turtlebot3_example/catkin_generated/windows_wrappers/turtlebot3_example_turtlebot3_illumination_exec_install_python/turtlebot3_illumination.exe")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_example" TYPE PROGRAM FILES "C:/ws/turtlebot3/build/turtlebot3/turtlebot3/turtlebot3_example/catkin_generated/installspace/turtlebot3_marker_server")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_example" TYPE EXECUTABLE FILES "C:/ws/turtlebot3/build/turtlebot3/turtlebot3/turtlebot3_example/catkin_generated/windows_wrappers/turtlebot3_example_turtlebot3_marker_server_exec_install_python/turtlebot3_marker_server.exe")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot3_example" TYPE DIRECTORY FILES
    "C:/ws/turtlebot3/src/turtlebot3/turtlebot3/turtlebot3_example/launch"
    "C:/ws/turtlebot3/src/turtlebot3/turtlebot3/turtlebot3_example/rviz"
    )
endif()

