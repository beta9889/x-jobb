# Install script for directory: C:/ws/turtlebot3/src/utils/hls_lfcd_lds_driver

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "C:/ws/turtlebot3/build/utils/hls_lfcd_lds_driver/catkin_generated/installspace/hls_lfcd_lds_driver.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hls_lfcd_lds_driver/cmake" TYPE FILE FILES
    "C:/ws/turtlebot3/build/utils/hls_lfcd_lds_driver/catkin_generated/installspace/hls_lfcd_lds_driverConfig.cmake"
    "C:/ws/turtlebot3/build/utils/hls_lfcd_lds_driver/catkin_generated/installspace/hls_lfcd_lds_driverConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hls_lfcd_lds_driver" TYPE FILE FILES "C:/ws/turtlebot3/src/utils/hls_lfcd_lds_driver/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/hls_lfcd_lds_driver" TYPE EXECUTABLE FILES "C:/ws/turtlebot3/devel/lib/hls_lfcd_lds_driver/hlds_laser_publisher.exe")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/hls_lfcd_lds_driver" TYPE EXECUTABLE FILES "C:/ws/turtlebot3/devel/lib/hls_lfcd_lds_driver/hlds_laser_segment_publisher.exe")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hls_lfcd_lds_driver" TYPE DIRECTORY FILES "C:/ws/turtlebot3/src/utils/hls_lfcd_lds_driver/include/hls_lfcd_lds_driver/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hls_lfcd_lds_driver" TYPE DIRECTORY FILES
    "C:/ws/turtlebot3/src/utils/hls_lfcd_lds_driver/launch"
    "C:/ws/turtlebot3/src/utils/hls_lfcd_lds_driver/rviz"
    )
endif()

