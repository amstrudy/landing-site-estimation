/*
Copyright (C) 2017 NCSSM Rocketry NASA Student Launch Team
Situ.h

Author: Forrest Eli Hurley
An addition to the Cambridge Rocketry Simulator to support predictions during a flight

*/
#ifndef SITU_H
#define SITU_H

//#include "RocketFlight.h"
//#include "ascentcalc.h"
//#include "descentcalc.h"
//#include "MonteFy.h"
//#include <chrono>
#include <Eigen.h>

#include <ros/ros.h>
#include <tf/transform_broadcaster.h>
#include <nav_msgs/Odometry.h>

struct ballistic {
private:
	vector<double> times;
	vector<vector3> positions;
public:
	void add_point(vector3 position, double time){
		positions.append(position);
		times.append(time)
	}

	vector3 getPosition(int idx) { return positions[idx]; };
	double getTime(int idx) { return times[idx]; };

	int size() { return positions.size(); };
}

class Situ{
private:
	int max_iters = 1000;

	ballistic history;

	//bool newState = false;
	
	double currentTime = 0;
	vector3 position = vector3(0,0,0);
	vector3 velocity = vector3(0,0,0);
	float exponential_smoothing = 0.9;

	const vector3 gravity = vector3(0,0,-9.8);
	float delta_sim_time = 0.1;

	vector3 calc_sim_drag() { return vector3(0,0,0); };
    //int getCurrentCondition();//0: ascent, 1: free-fall, 2: parachute, 3: landing

	//vector3 x; //returns x, y, z position
	//vector3 v; //returns x, y, z velocity
	//quaternion heading(); //returns heading of the rocket
	//vector3 get_ang_vel(); //returns angular velocity of the rocket
public:
       
	//double getCurrentTime();
	//vector<double> getCurrentState();

	//vector<RKF_data> SituCalc(bool rand, MonteFy StochTab);
	//OutputData SituMonte(float runtime);

	void updateState(cons sensor_msgs::NavSatFix::ConstPtr& msg);
	vector3 predictArc();
};

