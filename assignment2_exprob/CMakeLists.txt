cmake_minimum_required(VERSION 3.0.2)
project(assignment2_exprob)

## Compile as C++11, supported in ROS Kinetic and newer
# add_compile_options(-std=c++11)

## Find catkin macros and libraries
find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  rosplan_planning_system # Add this line
)

## Uncomment this if the package has a setup.py. This macro ensures
## modules and global scripts declared therein get installed
## See http://ros.org/doc/api/catkin/html/user_guide/setup_dot_py.html
catkin_python_setup()

################################################
## Declare ROS messages, services and actions ##
################################################

# ...

###################################
## catkin specific configuration ##
###################################

catkin_package(
 INCLUDE_DIRS include
 LIBRARIES assignment2
 CATKIN_DEPENDS roscpp rospy rosplan_planning_system
 DEPENDS system_lib
)

###########
## Build ##
###########

## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(
  include
  ${catkin_INCLUDE_DIRS}
)

## Declare a C++ executable
add_executable(myAction_assign2 src/myAction_assign2.cpp)
add_dependencies(myAction_assign2 ${catkin_EXPORTED_TARGETS})

target_link_libraries(myAction_assign2
  ${catkin_LIBRARIES}
)

#############
## Install ##
#############

# ...

#############
## Testing ##
#############

# ...
