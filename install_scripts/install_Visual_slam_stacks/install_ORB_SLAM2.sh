cd
git clone --recursive https://github.com/raulmur/ORB_SLAM2
mkdir dependencies
cd dependencies

sudo apt install libglew*
sudo apt install glew*
sudo apt install libpython*-dev
git clone --recursive https://github.com/stevenlovegrove/Pangolin
cd Pangolin
mkdir build
cd build
cmake ..
sudo make install

hg clone https://bitbucket.org/eigen/eigen/
cd eigen
mkdir build
cd build
cmake ..
sudo make install 

cd
cd ORB_SLAM2
chmod +x build.sh
./build.sh
echo "export ROS_PACKAGE_PATH=${ROS_PACKAGE_PATH}:~/ORB_SLAM2/Examples/ROS" >> ~/.bashrc
chmod +x build_ros.sh
./build_ros.sh
