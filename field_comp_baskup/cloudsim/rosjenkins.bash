# To connect via ROS:

# ROS's setup.sh will overwrite ROS_PACKAGE_PATH, so we'll first save the existing path
oldrpp=

#. /usr/share/drcsim/setup.sh
#eval export ROS_PACKAGE_PATH=$oldrpp:$ROS_PACKAGE_PATH
export ROS_IP=10.0.0.52
export ROS_MASTER_URI=http://10.0.0.51:11311 

export GAZEBO_IP=10.0.0.52
export GAZEBO_MASTER_URI=http://10.0.0.51:11345

