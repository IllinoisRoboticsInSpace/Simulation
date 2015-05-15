roslaunch 2015sim.launch &
sleep 5
rosrun gazebo_ros gazebo ../worlds/Arena.world &
sleep 5
rosrun rviz rviz peter.rviz &
sleep 3
rosrun map_server map_server_params.yaml &
sleep 3
roslaunch sim_control.launch &
sleep 5

read -p "Press any key to kill... " -n1 -s
killall -9 roscore
killall -9 gzserver
