#include "planner.h"
#include <iostream>
#include <unordered_map>
#include <cstdlib>
#include <ctime>
#include <chrono>
#include <math.h>
#include "planner/plan.h"
#include "planner/agent_status.h"
#include "ros/ros.h"


using namespace std;

vector<double> start;
vector<double> goal;
string agent_id;

bool ser_flag 	= 	false;
bool subs_flag 	= 	false;
	
vector<double> x_path_send;
vector<double> y_path_send;


///////////////////////function for finding the path from the given set of goal and start position. ///////////////////////

void MRobo::find_path(vector<double> start, vector<double> goal)
{

	ROS_INFO("finding the path");

	vector<vector<int>>cost_list(12,vector<int>(12,1000));
	vector<vector<node>> grid(12,vector<node>(12));

	int i_cur = start[0];
	int j_cur = start[1];

	int i_goal = goal[0];
	int j_goal = goal[1];

	cost_list[i_cur][j_cur] 	= 	0;
	grid[i_cur][j_cur].parent_x = 	i_cur;
	grid[i_cur][j_cur].parent_y = 	j_cur;
	grid[i_cur][j_cur].visit 	= 	true;

	

	int min_cost = 1000;

	int update = 0;


	for(int i = 0;i<10;i++)
		{
			for(int j = 0; j <10; j++)
			{

				grid[i][j].visit = false; 
				

			}
		}



	
////////////////////////planning loop starts here /////////////////////////

	while(true)
	{


		min_cost = 1000;



		for(int i = 0;i<10;i++) /// this loop finds the minimum cost node from the current cost grid
		{
			for(int j = 0; j<10;j++)
			{

				if (cost_list[i][j] < min_cost)
				{
					min_cost = cost_list[i][j];

					i_cur = i;
					j_cur = j;
				}

			}
		}



		if(i_cur==i_goal && j_cur==j_goal)
		{
			break;
		}

		

		// ROS_INFO("the parent of current node : %d%d", i_cur,j_cur);
		// ROS_INFO("is the node : %d%d", grid[i_cur][j_cur].parent_x,grid[i_cur][j_cur].parent_y);

	

		grid[i_cur][j_cur].visit = true;

////////////////////////////////////////// we check every neighbour of the four connected graph //////////////////////


		int i_n1 = i_cur+1;
		int j_n1 = j_cur;

		if(i_n1<10&&j_n1<10&&grid[i_n1][j_n1].visit!=true)
		{
			int cost = min_cost + 10;// + 10*(i_goal-i_n1) + 10*(j_goal-j_n1);
			if (cost<cost_list[i_n1][j_n1])
			{
				cost_list[i_n1][j_n1] 		= 	cost;
				grid[i_n1][j_n1].parent_x 	= 	i_cur;
				grid[i_n1][j_n1].parent_y 	= 	j_cur;
			}
		}




		i_n1 = i_cur;
		j_n1 = j_cur+1;

		if(i_n1<10&&j_n1>0&&grid[i_n1][j_n1].visit!=true)
		{
			int cost = min_cost + 10;// + 10*(i_goal-i_n1) + 10*(j_goal-j_n1);
			if (cost<cost_list[i_n1][j_n1])
			{
				cost_list[i_n1][j_n1] 		= 	cost;
				grid[i_n1][j_n1].parent_x 	= 	i_cur;
				grid[i_n1][j_n1].parent_y 	= 	j_cur;
			}
		}



		i_n1 = i_cur-1;
		j_n1 = j_cur;

		if(i_n1>=0&&j_n1<10&&grid[i_n1][j_n1].visit!=true)
		{
			int cost = min_cost + 10;// + 10*(i_goal-i_n1) + 10*(j_goal-j_n1);
			if (cost<cost_list[i_n1][j_n1])
			{
				cost_list[i_n1][j_n1] 		= 	cost;
				grid[i_n1][j_n1].parent_x 	= 	i_cur;
				grid[i_n1][j_n1].parent_y 	= 	j_cur;
			}
		}


		i_n1 = i_cur;
		j_n1 = j_cur-1;

		if(i_n1>=0&&j_n1>=0&&grid[i_n1][j_n1].visit!=true)
		{
			int cost = min_cost + 10;// + 10*(i_goal-i_n1) + 10*(j_goal-j_n1);
			if (cost<cost_list[i_n1][j_n1])
			{
				cost_list[i_n1][j_n1] 		= 	cost;
				grid[i_n1][j_n1].parent_x 	= 	i_cur;
				grid[i_n1][j_n1].parent_y 	= 	j_cur;
			}
		}


		cost_list[i_cur][j_cur] = 1000;

		update= update+1;
		

	}



	x_path.push_back(i_goal);
	y_path.push_back(j_goal);

	int i_cur1 = i_goal;
	int j_cur1 = j_goal;

	ROS_INFO("found the path");

/////////////////////This loop finds the path by backtracking the lowest cost parents //////////////////////

	while(true)
	{
		if (i_cur1==start[0]&&j_cur1==start[1])
		{
			break;
		}

		i_cur = grid[i_cur1][j_cur1].parent_x;
		j_cur = grid[i_cur1][j_cur1].parent_y;

		x_path.push_back(i_cur);
		x_path_send.push_back(i_cur);
		y_path.push_back(j_cur);
		y_path_send.push_back(j_cur);

		i_cur1=i_cur;
		j_cur1=j_cur;


	}



	// int length = x_path.size();

	// for (int p = 0;p<length;p++)
	// {
	// 	ROS_INFO("the x coordinate is : %d",x_path[p]);
	// 	ROS_INFO("the y coordinate is : %d",y_path[p]);
	// }





}

////////////////////Just a message function for showing that the grid can now be displayed ////////////////////
void MRobo::display_grid()
{
	ROS_INFO("displaying the grid");
	
}
//////////////////////////////// public function for starting the plan 

void MRobo::start_plan(vector<double> start,vector<double> goal)
{

	ROS_INFO("Got the start and goal");

	if(ser_flag&&subs_flag)
	{
		find_path(start,goal);
		ROS_INFO("will display the grid now");
		display_grid();
	}



}

////////////////////////////////////call back function for the topic of assigning the current position of the agent ////////////////////////

void assign_start(const planner::agent_status msg)
{
	start = msg.curr_pos;
	subs_flag = true;

}


//////////////////////////////// call back function for the getting plan service call ///////////////////////////////////


bool plan_assign(planner::plan::Request &req, planner::plan::Response &res)
{

	
	goal 		= 	req.goal;
	agent_id 	= 	req.id;


	MRobo mrobo;

	if(!goal.empty())
	{
		ROS_INFO("goal has been provided");
		ser_flag = true;

	}
	else
	{
		ROS_INFO("goal is not yet provided");
	}
	

	mrobo.start_plan(start,goal);

	res.plan_x = x_path_send;
	res.plan_y = y_path_send;


	return true;


}


//////////// main driving function .//////////////////////////////


int main(int argc, char * argv[]) 
{



	ros::init(argc,argv,"planner_node");

	ros::NodeHandle n; 

	ros::ServiceServer send_plan = n.advertiseService("get_plan", plan_assign);



	ros::NodeHandle n1;
	ros::Subscriber start_sub = n.subscribe("agent_feedback", 1000, assign_start);

	




	ROS_INFO("I can now provide the plan");

	ros::spin();





	return 0;


}
