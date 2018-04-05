#include <iostream>
#include <array>
#include <vector>
#include <Eigen/Dense> 
#include <math.h>
#include "spline-master/src/spline.h"

//All units in metric

//only horizontal wind will be calculated
//table will contain values of Cd*A from every angle
//We can calculate F = Cd*A * density * velocity^2 / 2
//Before parachute deploy, we will use drag equation.
//After parachute deploy we will assume wind velocity = horizontal velocity
//the wind speed at 100 m output of this program will be sent to a kalman filter


using namespace std;
using namespace Eigen;

windS::windS(array<vector<double>, 2> _densityCurve, array<vector<double>, 2> _dragCurve, double _mass, double _hellmanCoefficient, double _refHeight)
{
	densityCurve.set_points(_densityCurve[0], _densityCurve[1]);
	dragCurve.set_points(_dragCurve[0], _dragCurve[1]);
	mass = _mass;
	hellmanCoefficient =  _hellmanCoefficient;
	refHeight = _refHeight;
}

/*
//Only needed for 2D calculations
double windS::dragTable(double angle, double yaw)
{
	//This function returns Cd*A for an angle and yaw
	//For angle -pi/2 is directly below, pi/2 is from above, 0 is sideways
	//It should load from a CSV	
}
*/

double windS::angle(double pitch, double roll)
{
	//TODO: Angle is from -pi/2 to pi/2, represents combination of pitch and roll
}

//Note that acceleration must be rotated such that is parrallel to a tangent on earth's surface
Vector2d windS::windVelocity(Vector2d acceleration, double pitch, double roll, double altitude)
{
	double density 	= densityCurve(altitude);
	double CdA 	= dragCurve(angle(pitch, roll));
	double magWind 	= sqrt(acceleration.norm()*mass/(CdA*density/2)); 	//Inverse drag equation
	
	if(altitude<300) //Wind speeds constant at > 300 m
	{
		magWind *= pow((refHeight/altitude), 1/hellmanCoefficient);	//Power wind law
	}	  
			
	return magWind*acceleration/acceleration.norm();	  	  	//Unit acceleration
}
