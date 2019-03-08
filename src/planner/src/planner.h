
#ifndef DATE_H
#define DATE_H

#include "grid.h"
#include <iostream>
#include <vector>

using namespace std;

class MRobo 
{
	private:
		

		void find_path(struct node start_node, struct node goal_node, vector<vector<node>> grid);
		


	public:

		void start_plan(struct node start,struct node goal);
		void display_grid();


};

#endif