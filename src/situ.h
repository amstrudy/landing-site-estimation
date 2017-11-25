/*
Copyright (C) 2017 NCSSM Rocketry NASA Student Launch Team
Situ.h

Author: Forrest Eli Hurley
An addition to the Cambridge Rocketry Simulator to support predictions during a flight

*/
#ifndef SITU_H
#define SITU_H

#include "RocketFlight.h"
#include "ascentcalc.h"
#include "descentcalc.h"
#include "MonteFy.h"
#include <chrono>

class Situ : public Rocket_Flight{
        int max_iters = 1000;
        int getCurrentCondition();//0: ascent, 1: free-fall, 2: parachute, 3: landing

        vector3 get_x(); //returns x, y, z position
        vector3 get_v(); //returns x, y, z velocity
        quaternion get_quat(); //returns heading of the rocket
        vector3 get_ang_vel(); //returns angular velocity of the rocket
    public:
       
        vector<double> getCurrentTime();
        vector<double> getCurrentState();

        vector<RKF_data> SituCalc(bool rand, MonteFy StochTab);
        OutputData SituMonte(float runtime);
};

