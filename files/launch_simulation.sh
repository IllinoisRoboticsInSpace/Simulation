# start simulation
roslaunch 2015sim.launch &
sleep 7

# start Gazebo
rosrun gazebo_ros gazebo ../worlds/Arena.world &
sleep 10

# start rviz
rosrun rviz rviz peter.rviz &
sleep 5

# start map_server
rosrun map_server map_server map_server_params.yaml &
sleep 5

# start move_base and manual control
roslaunch sim_control.launch &
sleep 5

read -p "Press any key to kill... " -n1 -s
killall -9 roscore
killall -9 roslaunch
killall -9 rosmaster
killall -9 rosout
killall -9 gzserver
