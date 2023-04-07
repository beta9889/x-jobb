# Install script for directory: C:/ws/turtlebot3/src/turtlebot3/dynamic_logistics_warehouse

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "C:/ws/turtlebot3/build/turtlebot3/dynamic_logistics_warehouse/catkin_generated/installspace/dynamic_logistics_warehouse.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dynamic_logistics_warehouse/cmake" TYPE FILE FILES
    "C:/ws/turtlebot3/build/turtlebot3/dynamic_logistics_warehouse/catkin_generated/installspace/dynamic_logistics_warehouseConfig.cmake"
    "C:/ws/turtlebot3/build/turtlebot3/dynamic_logistics_warehouse/catkin_generated/installspace/dynamic_logistics_warehouseConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dynamic_logistics_warehouse" TYPE FILE FILES "C:/ws/turtlebot3/src/turtlebot3/dynamic_logistics_warehouse/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dynamic_logistics_warehouse" TYPE DIRECTORY FILES
    "C:/ws/turtlebot3/src/turtlebot3/dynamic_logistics_warehouse/launch"
    "C:/ws/turtlebot3/src/turtlebot3/dynamic_logistics_warehouse/models"
    "C:/ws/turtlebot3/src/turtlebot3/dynamic_logistics_warehouse/worlds"
    "C:/ws/turtlebot3/src/turtlebot3/dynamic_logistics_warehouse/maps"
    "C:/ws/turtlebot3/src/turtlebot3/dynamic_logistics_warehouse/rviz"
    )
endif()
