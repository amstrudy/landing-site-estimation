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
#include <Eigen/Dense>

#include <ros/ros.h>
#include <tf/transform_broadcaster.h>
#include <sensor_msgs/NavSatFix.h>
#include <geodesy/utm.h>

using namespace std; 
using namespace Eigen;

struct posTime
{
	double time;
	geodesy::UTMPoint position;

	posTime() {};
	posTime(double inTime, geodesy::UTMPoint inPosition) : time(inTime), position(inPosition) {};
};

struct ballistic 
{
private:
	vector<posTime> points;
public:
	void add_point(geodesy::UTMPoint position, double time){
		points.push_back(posTime(time,position));
	}

	geodesy::UTMPoint getPosition(int idx) { return points[idx].position; };
	double getTime(int idx) { return points[idx].time; };

	posTime getFirst()
	{
		if (points.size() > 0) return points[0];
		return posTime();
	}

	posTime getLast()
	{
		if (points.size() > 0) return points[points.size() - 1];
		return posTime();
	}

	int size() { return points.size(); };
};

class Situ{
private:
	int max_iters = 1000;

	ballistic history;

	//bool newState = false;
	
	double currentTime = 0;
	geodesy::UTMPoint position;
	Vector3d velocity = Vector3d(0,0,0);
	float exponential_smoothing = 0.9;

	const Vector3d gravity = Vector3d(0,0,-9.8);
	float delta_sim_time = 0.1;

	Vector3d calc_sim_drag() { return Vector3d(0,0,0); };
    //int getCurrentCondition();//0: ascent, 1: free-fall, 2: parachute, 3: landing

	//Vector3d x; //returns x, y, z position
	//Vector3d v; //returns x, y, z velocity
	//quaternion heading(); //returns heading of the rocket
	//Vector3d get_ang_vel(); //returns angular velocity of the rocket
public:
       
	//double getCurrentTime();
	//vector<double> getCurrentState();

	//vector<RKF_data> SituCalc(bool rand, MonteFy StochTab);
	//OutputData SituMonte(float runtime);

	void updateState(const sensor_msgs::NavSatFix::ConstPtr& msg);
	ballistic predictArc();
};

#endif
