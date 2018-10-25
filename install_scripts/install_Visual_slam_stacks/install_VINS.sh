sudo apt-get install ros-kinetic-cv-bridge ros-YOUR_DISTRO-tf ros-kinetic-message-filters ros-kinetic-image-transport

mkdir ~/visualslam_ws/src -p
cd ~/visualslam_ws/src
git clone https://github.com/HKUST-Aerial-Robotics/VINS-Mono.git
cd ..
catkin_make
source ~/visualslam_ws/devel/setup.bash

