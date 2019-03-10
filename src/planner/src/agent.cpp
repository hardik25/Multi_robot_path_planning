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
#include <visualization_msgs/MarkerArray.h>
#include <visualization_msgs/Marker.h>

using namespace std;

vector<double> goal;
vector<double> plan_x;
vector<double> plan_y;
string agent_id;
vector<double> start;
int avail;
bool flag = false;
int length=0;





bool goal_assign(planner::goal_update::Request &req, planner::goal_update::Response &res)
{
	goal = req.goal;
	avail = req.avail;
	ROS_INFO("the goal has been assigned");
	res.run = "yes";

	

	ros::NodeHandle n1;

	ros::ServiceClient plan_client = n1.serviceClient<planner::plan>("get_plan");
	planner::plan plan_service;

	plan_service.request.goal = goal;
	
	plan_service.request.start = start;

	plan_service.request.id = agent_id;

	if (plan_client.call(plan_service))
	{	
		ROS_INFO("getting the plan now");
		plan_x = plan_service.response.plan_x;
		plan_y = plan_service.response.plan_y;
		length = plan_y.size();
		flag = true;

	}
	else
	{
		ROS_INFO("we are not able to get the service from the planning server");
		// return 1;
	}



	return true;
}

int main(int argc, char * argv[]) 
{

	cout<<"input the agent id in as string";

	

	getline(cin,agent_id);

	cout<<"input the start position as: [x,y,yaw] in the same sequence";

	

	for (int i = 0; i<3; i++)
	{
		double x;
		cin>>x;
		start.push_back(x);

	}




	ros::init(argc,argv,"agent_node");

	ros::NodeHandle n; 

	ros::ServiceServer get_goal = n.advertiseService("update_goal", goal_assign);


	ros::NodeHandle n2;
	ros::Publisher start_pub = n2.advertise<planner::agent_status>("agent_feedback", 1000);
	ros::Rate loop_rate(10);

	planner::agent_status a_stat;
	a_stat.curr_pos = start;


	ros::NodeHandle np;

    visualization_msgs::MarkerArray viz_msg;
    ros::Publisher pub_marker = np.advertise<visualization_msgs::MarkerArray>("normals_marker_array", 100);
    



	

	
	while(ros::ok())
	{
		
		

		if (flag)
		{
			viz_msg.markers.resize(length);
			for (int i = 0; i <length; i++)
			{
			// ROS_INFO("%f",plan_y[i+5]);
					

			viz_msg.markers[i].header.frame_id = "base_link";
		    viz_msg.markers[i].header.stamp = ros::Time();
		    viz_msg.markers[i].ns = "my_namespace";
		    viz_msg.markers[i].id = i;
		    viz_msg.markers[i].type = visualization_msgs::Marker::SPHERE;
		    viz_msg.markers[i].action = visualization_msgs::Marker::ADD;
		    viz_msg.markers[i].pose.position.x = plan_x[i];
		    viz_msg.markers[i].pose.position.y = plan_y[i];
		    viz_msg.markers[i].pose.position.z = 0.0;
		    viz_msg.markers[i].pose.orientation.x = 0.0;
		    viz_msg.markers[i].pose.orientation.y = 0.0;
		    viz_msg.markers[i].pose.orientation.z = 0.0;
		    viz_msg.markers[i].pose.orientation.w = 1.0;
		    viz_msg.markers[i].scale.x = 0.2;
		    viz_msg.markers[i].scale.y = 0.2;
		    viz_msg.markers[i].scale.z = 0.2;
		    viz_msg.markers[i].color.a = 1.0;
		    viz_msg.markers[i].color.r = 0.0;
		    viz_msg.markers[i].color.b = 0.1;
		    viz_msg.markers[i].color.g = 0.1;
			
			flag = false;

			}

		}

		start_pub.publish(a_stat);
		pub_marker.publish(viz_msg);
		ros::spinOnce();
		loop_rate.sleep();


	}



	return 0;


}

