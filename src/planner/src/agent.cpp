#include "planner.h"
#include <iostream>
#include <unordered_map>
#include <cstdlib>
#include <ctime>
#include <chrono>
#include <vector>
#include <math.h>
#include "ros/ros.h"
#include "planner/goal_update.h"
#include "planner/plan.h"
#include "planner/agent_status.h"
#include <string>
#include <vector>

using namespace std;

vector<double> goal;
vector<double> plan_x;
vector<double> plan_y;

bool goal_assign(planner::goal_update::Request &req, planner::goal_update::Response &res)
{
	goal = req.goal;
	ROS_INFO("the goal has been assigned");
	res.run = "yes";
	return true;
}

int main(int argc, char * argv[]) 
{

	cout<<"input the agent id in as string";

	string agent_id;

	getline(cin,agent_id);

	cout<<"input the start position as: [x,y,yaw] in the same sequence";

	vector<double> start;

	for (int i = 0; i<3; i++)
	{
		double x;
		cin>>x;
		start.push_back(x);

	}




	ros::init(argc,argv,"agent_node");

	ros::NodeHandle n; 

	ros::ServiceServer get_goal = n.advertiseService("update_goal", goal_assign);

	// cout<<"For agent with id "<< agent_id << "the start point is "<<start<<"and the goal point is"<<goal<<endl;



	ros::NodeHandle n1;

	ros::ServiceClient plan_client = n1.serviceClient<planner::plan>("get_plan");
	planner::plan plan_service;

	plan_service.request.goal = goal;
	
	plan_service.request.start = start;

	plan_service.request.id = agent_id;

	if (plan_client.call(plan_service))
	{	
		 plan_x = plan_service.response.plan_x;
		 plan_y = plan_service.response.plan_y;


	}
	else
	{
		ROS_INFO("we are not able to get the service from the planning server");
		// return 1;
	}


	ros::NodeHandle n2;
	ros::Publisher start_pub = n.advertise<planner::agent_status>("agent_feedback", 1000);
	ros::Rate loop_rate(10);

	planner::agent_status a_stat;
	a_stat.curr_pos = start;
	
	while(ros::ok())
	{

		start_pub.publish(a_stat);
		ros::spinOnce();
		loop_rate.sleep();


	}



	return 0;


}

