# Multi-Agent Robot planning
ROS package for decentralized path planning of multiple robots/agents

The ROS package works standalone but please make sure you have RVIZ installed for visualization. 

Follow the instructions 



Clone the repository in the source folder of your ROS Workspace. 

These dependencies are important to install the package: 

For matters of ease, you might want to have multiple terminals opened( a good option is always terminator to make partitions in the terminal)

You can run the package in two modes: 
1. Stand alone mode.
2. Use a unit test. 

1. copy the package "planner" in your existing workspace. 
2. open the terminal in the workspace and run "catkin_make"
3. If catkin_make runs properly then fine otherwise delete the build and devel folder of the workspace and make again. 
4. If it still does not run fine then please mail me at sidsingh@seas.upenn.edu. 

1. Stand alone mode. 

	a. In one terminal issue the command $roslaunch planner Planner.launch. This launches the agent node which takes the agent id and the start position. (it will take neither until a goal position is assigned.)
	b. In the second terminal $source devel/setup.bash and then $rosrun planner planner_node. This will launch the planner node and hopefully you will now see that the planner can now send the plan.
	c. In the third terminal $source devel/setup.bash and then $rosservice call /update_goal [x1,y1,0] 1. x1 and y1 are the goal positions which lie between (0,9) for a 10X10 4 connected grid. Once you have done this you will now see a prompt in the agent terminal to input the agent id and the start position. Follow the instruction as is. If entered correctly the planner terminal will show that it is now displaying the grid. 
	d. In the fourth terminal open RVIZ by the command $rviz change the fixed frame to base_link and add from the topic being published the markerArray topic. And now you can see the path being displayed using ball markers. 
	e. for displaying any new path for any new agent you simply have to follow the step c again and the new path will be added to the existing visualization. 

2. Unit test case. 
	a. Follow till step b of the previous section
	b. In the third terminal run $rosrun planner driver_node
	c. Input two agents and start positions of both as (1,1,0) and (5,5,0). The path planned is till (5,5,0) and (9,9,0)
	d. See the visualization on rviz. 

Caution: this is a 10X10 grid and indexing is done from 0 so no start or goal position can have 10 as the location. 



For any issues mail on sidsingh@seas.upenn.edu or Singh.sid930@gmail.com



