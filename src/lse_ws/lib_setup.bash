#!/bin/bash

# Load ROS

source /opt/ros/kinetic/setup.bash

# Load pkg

source devel/setup.bash

# Load Yocto Libraries

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:src/altimeter_pub/include/yocto/64bits
