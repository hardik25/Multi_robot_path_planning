#include "planner.h"
#include <iostream>
#include <cstdlib>
#include <ctime>
#include <chrono>
#include <vector>
#include <math.h>
#include "planner/goal_update.h"
#include "ros/ros.h"
#include <string>

using namespace std;




int main(int argc, char **argv)

{

	ros::init(argc,argv,"Driver_Client");

	if (argc == 1)
	{
		cout<<"the goal position has been entered correctly";
	}
	else 
	{
		cout<< " Why have you entered more than one goal? Please enter just one goal";
	}

	ros::NodeHandle n; 
	ros::ServiceClient D_client = n.serviceClient<planner::goal_update>("update_goal");
	planner::goal_update service;

	int x = atoi(argv[1]);
	int y = atoi(argv[2]);
	int yaw = atoi(argv[3]);

	int goal[3] = {x,y,yaw};

	service.request.goal[1] = x;
	service.request.goal[2] = y;
	service.request.goal[3] = yaw;
	service.request.avail = 1;

	if (D_client.call(service))
	{	

		string is_it = service.response.run;
		// ROS_INFO("are we able to get the goal update service ? : %s", is_it);

	}
	else
	{
		ROS_INFO("we are not able to update the goal through the service");
		return 1;
	}

	return 0;



}
