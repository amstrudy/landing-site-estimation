#include "ros/ros.h"
#include "nav_msgs/Odometry.msg"

#include <sstream>

int main (int argc, char *argv[])
{
  ros::init(argc, argv, "sensor_fusion");

  // main access point with the ROS system
  ros ::NodeHandle n;

  ros::Publisher sensor_fuse = n.advertise<nav::msgs/Odometry.msgs>()
}
