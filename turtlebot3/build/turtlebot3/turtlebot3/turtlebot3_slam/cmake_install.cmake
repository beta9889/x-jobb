# Install script for directory: C:/ws/turtlebot3/src/turtlebot3/turtlebot3/turtlebot3_slam

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "C:/ws/turtlebot3/build/turtlebot3/turtlebot3/turtlebot3_slam/catkin_generated/installspace/turtlebot3_slam.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot3_slam/cmake" TYPE FILE FILES
    "C:/ws/turtlebot3/build/turtlebot3/turtlebot3/turtlebot3_slam/catkin_generated/installspace/turtlebot3_slamConfig.cmake"
    "C:/ws/turtlebot3/build/turtlebot3/turtlebot3/turtlebot3_slam/catkin_generated/installspace/turtlebot3_slamConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot3_slam" TYPE FILE FILES "C:/ws/turtlebot3/src/turtlebot3/turtlebot3/turtlebot3_slam/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_slam" TYPE EXECUTABLE FILES "C:/ws/turtlebot3/devel/lib/turtlebot3_slam/flat_world_imu_node.exe")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/turtlebot3_slam" TYPE DIRECTORY FILES "C:/ws/turtlebot3/src/turtlebot3/turtlebot3/turtlebot3_slam/include/turtlebot3_slam/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot3_slam" TYPE DIRECTORY FILES
    "C:/ws/turtlebot3/src/turtlebot3/turtlebot3/turtlebot3_slam/bag"
    "C:/ws/turtlebot3/src/turtlebot3/turtlebot3/turtlebot3_slam/config"
    "C:/ws/turtlebot3/src/turtlebot3/turtlebot3/turtlebot3_slam/launch"
    "C:/ws/turtlebot3/src/turtlebot3/turtlebot3/turtlebot3_slam/rviz"
    )
endif()

