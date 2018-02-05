#!/bin/bash

# Load ROS

source /opt/ros/kinetic/setup.bash

# Load pkg

source /home/anjasheppard/landing-site-estimation/src/lse_ws/devel/setup.bash

# Load Yocto Libraries

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/anjasheppard/landing-site-estimation/src/lse_ws/src/altimeter_pub/include/yocto/64bits
