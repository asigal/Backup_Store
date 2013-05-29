echo `date` "$1 $2 $3" >> /home/ubuntu/cloudsim/start_sim.log

. /usr/share/drcsim/setup.sh 
export ROS_IP=10.0.0.52 
export GAZEBO_IP=10.0.0.52
export DISPLAY=:0 
roslaunch $1 $2 $3 gzname:=gzserver  &

