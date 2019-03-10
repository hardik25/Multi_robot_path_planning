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



	// if (argc == 3)
	// {
	// 	cout<<"the goal position has been entered correctly";
	// }
	// else 
	// {
	// 	cout<< " Why have you entered more than one goal? Please enter just one goal";
	// }

	ros::NodeHandle n; 
	ros::ServiceClient D_client = n.serviceClient<planner::goal_update>("update_goal");
	planner::goal_update service;

	ROS_INFO("will update the goal now");

	vector<double>goal{5,5,0};




	service.request.goal= goal;

	if (D_client.call(service))
	{	
		string is_it = service.response.run;

	}
	else
	{
		ROS_INFO("we are not able to update the goal through the service");
		return 1;
	}

	vector<double>goal1{9,7,0};


	service.request.goal =  goal1;
	service.request.avail = 1;

	if (D_client.call(service))
	{	
		string is_it = service.response.run;

	}
	else
	{
		ROS_INFO("we are not able to update the goal through the service");
		return 1;
	}




	return 0;



}
