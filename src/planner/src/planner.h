
#ifndef DATE_H
#define DATE_H

#include "node.h"
#include <vector>
#include <iostream>

using namespace std;

//class defition for the planner node. 

class MRobo 
{
	private:


	vector<int> x_path;
	vector<int> y_path;

    
	void find_path(vector<double>start, vector<double> goal);
	void display_grid();
		


	public:

		void start_plan(vector<double> start,vector<double> goal);
		


};

#endif