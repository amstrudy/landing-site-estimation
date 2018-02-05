#include <stdlib.h>
#include <iostream>
#include "ros/ros.h"
#include "nav_msgs/Odometry.h"
#include "/home/anjasheppard/VirtualHub/Cpp_API/Sources/yocto_altitude.h"
#include "/home/anjasheppard/VirtualHub/Cpp_API/Sources/yocto_api.h"
#include "/home/anjasheppard/VirtualHub/Cpp_API/Sources/yocto_genericsensor.h"

int main (int argc, char *argv[])
{
	ros::init(argc, argv, "altimeter_pub_node");

	ros::NodeHandle n;

	ros::Publisher alt_pub = n.advertise<nav_msgs::Odometry>("alt_pub", 1000);

	ros::Rate loop_rate(10);

	string errmsg, target;
    YAltitude *asensor;

    target = "any";

    // Setup the API to use local USB devices
	if (yRegisterHub("usb", errmsg) != YAPI_SUCCESS)
	{
		std::cerr << "RegisterHub error: " << errmsg << std::endl;
		return 1;
	}

	if (target == "any")
	{
		asensor = yFirstAltitude();
		if (asensor == NULL)
		{
			std::cout << "No module connected (check USB cable)" << std::endl;
			return 1;
		}
	}
	else
		asensor = yFindAltitude(target + ".altitude");

    while(ros::ok())
	{
		if(!asensor->isOnline()) {
			ROS_ERROR_STREAM("Module not connected (check identification and USB cable)");
			break;
		}

		nav_msgs::Odometry odom;
		odom.header.frame_id = "alt_odom";
		odom.child_frame_id = "base_link";
		odom.pose.pose.position.z = asensor->get_currentValue();
		alt_pub.publish(odom);

		ros::spinOnce();

		loop_rate.sleep();

		ROS_INFO_STREAM("Current altitude: " << asensor->get_currentValue() << " m (QNH= " << asensor->get_qnh() << " hPa)" << std::endl);

		ySleep(1000, errmsg);
	}

	yFreeAPI();
	return 0;
}
