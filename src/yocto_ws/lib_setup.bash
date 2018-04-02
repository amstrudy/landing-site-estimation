#!/bin/bash

# Load ROS

source /opt/ros/kinetic/setup.bash

# Load pkg

source ~/landing-site-estimation/src/yocto_ws/devel/setup.bash

# Load Yocto Libraries

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:~/landing-site-estimation/src/yocto_ws/src/altimeter_pub/include/yocto/64bits
