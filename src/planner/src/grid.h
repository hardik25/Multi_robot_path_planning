#pragma once

#include <iostream>
#include "node.h"
#include <vector>

using namespace std;

class grid_space
{

private: 
	float length; 
	float width; 
	float resolution; 
public: 
	grid_space(float len, float wid, float res)
	{
		length 		= 	len;
		width  		= 	wid;
		resolution 	= 	res;
	}

	
	vector<vector<node>> grid = vector<vector<node>>(length*width);

	

    

};