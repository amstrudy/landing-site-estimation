#include "ros/ros.h"
#include "nav_msgs/Odometry.msg"
#include "sensor_msgs/NavSatFix"

void callback (const nav_msgs::NavSatFix::ConstPtr& msg);

int main (int argc, char *argv[])
{
  ros::init(argc, argv, "sensor_fusion");

  ros::NodeHandle n;

  ros::Publisher sensor_fuse_pub = n.advertise<nav::msgs/Odometry.msgs>("sensor_fuse_data", 1000);

  ros::Subscriber sensor_fuse_sub = n.subscribe("fix", 1000, chatter);

  ros::spin();

  return 0;
}

void callback (const nav_msgs::NavSatFix::ConstPtr& msg)
{
    nav_msgs::Odometry odom;

    odom.header.stamp = ros::Time:now();
    odom.header.frame_id = "odom";
    odom.child_frame_id = "baselink";

    odom.pose.pose.position.x = msg->data.latitude;
    odom.pose.pose.position.y = msg->data.longitude;
    odom.pose.pose.position.z = msg->data.altitude;
    odom.pose.pose.orientation = TODO

    // odom.twist.twist.linear.x = TODO
    // odom.twist.twist.linear.y = TODO
    // odom.twist.twist.angular.z = TODO

    sensor_fuse_pub.pub(odom);
}
