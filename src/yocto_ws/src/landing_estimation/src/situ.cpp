/*
Copyright (C) 2017 NCSSM Rocketry NASA Student Launch Team
Situ.cpp

Author: Forrest Eli Hurley
*/
#include "situ.h"

void Situ::updateState(const sensor_msgs::NavSatFix::ConstPtr& msg)
{
	double deltaTime = currentTime -  
	currentTime =
	if (position != vector3(0,0,0) and currentTime != 0){ 
	velocity = exponential_smoothing * velocity + (1. - exponential_smoothing * ( - position) / deltaTime;

	history.add_point(position, currentTime);
	}
	position =  
}

ballistic Situ::predictArc(){
	final_altitude = history.getPosition[0].z;

	ballistic sim_ballistic;
	sim_ballistic.add_point(position,currentTime);

	double simTime = currentTime;
	vector3 simPosition = position;
	vector3 simVelocity = velocity;

	vector3 simAcceleration;

	while (sim_ballistic.getPosition(sim_ballistic.size() - 1).z > final_altitude) {
		simAcceleration = gravity + calc_sim_drag();

		simTime += delta_sim_time;
		simPosition += delta_sim_time * ( sim_velocity + 0.5 * simAcceleration * delta_sim_time);
		simVelocity += delta_sim_time * simAcceleration;

		sim_ballistic.add_point(simPosition, simTime);		
	}

	return sim_ballistic;

}

int main(int argc, char **argv) 
{
	ros::init(arc, argv, "prediction");

	ros::NodeHandle n;

	ros::Subscriber location_sub = n.subscribe("/gps/fix",1000,updateState);

	ros::Publisher prediction_pub = n.advertise<sensor_msgs::NavSatFix>("prediction",1000)
	ros::Rate loop_rate(1);

	int count = 0;
	while(ros::ok())
	{

		ros::spinOnce();
		
		loop_rate.sleep();
		++count;
	}

/*
int Situ::getCurrentCondition(){

};

vector3 Situ::get_x(){
	
};

vector3 Situ::get_v(){

};

quaternion Situ::get_quat(){
    // hardcoded limits here
    double De_temp = SampleTruncated (De, sigmaDeclinationAngle, 1.0);
    double De_rad = De_temp * PI / 180.0;
    bearing AzOrth((Az-90.0),1.0);
    vector2 AzVec=AzOrth.to_vector();
    AzVec=AzVec.norm();

    // Calculate the initial quaternion

    quaternion Q0((cos(De_rad/2.0)),(sin(De_rad/2.0)*AzVec.e1),(sin(De_rad/2.0)*AzVec.e2),0.0);
    Q0=Q0.norm();

};

vector3 Situ::get_ang_vel(){

};

Situ::getCurrentTime(){
    //get current time
    vector<double> tt;

    tt.push_back(time0.0);
    tt.push_back(Tspan);

    return tt;
};

Situ::getCurrentState(){
    vector<double> z0;

    //Set the current position for simulation

    vector3 x_pos = get_x();

    z0.push_back(x_pos.e1);
    z0.push_back(x_pos.e2);
    z0.push_back(x_pos.e3);

    // Calculate the current quaternion

    quaternion Q0 = get_quat();

    z0.push_back(Q0.e1);
    z0.push_back(Q0.e2);
    z0.push_back(Q0.e3);
    z0.push_back(Q0.e4);

    //Set the current velocity for the simulation
    
    vector3 vel = get_v();

    z0.push_back(v.e1);
    z0.push_back(v.e2);
    z0.push_back(v.e3);
    
    //Set the current angular velocity for the simulation

    vector3 ang_vel = get_ang_vel();
    
    z0.push_back(ang_vel.e1);
    z0.push_back(ang_vel.e2);
    z0.push_back(ang_vel.e3);

    return z0;
};

vector<RKF_data> Situ::SituCalc(bool rand, MonteFy StochTab){
    //Calculates the remaining portion of the flight regardless of the current state of the rocket
    
    vector<double> tt, z0;
    
    tt = getCurrentTime();
    z0 = getCurrentState();

    INTAB Ftab;
    
    vector<RKF_data> flight_data;

    if (rand) Ftab = StochTab.Wiggle();
    else Ftab = IntabTR;
    
    int currentCondition = getCurrentCondition();

    if (currentCondition == 0){ //State 0 is before apogee
        ascent as1(tt, z0, Ftab, 0.0);
        flight_data.append(as1.fly());

        TimeTransfer(&tt, flight_data.back());
        StateTransferRocket(&z0, flight_data.back(), Ftab, Ftab);
    }
    if (currentCondition <= 1){ //State 1 is between apogee and parachute deployment
        ascent ds1(tt, z0, Ftab, 0.0);
        ds1.Kill = KillSwitch(2, getDeploymentAltitude(Ftab))
        flight_data.append(ds1.fly());

        TimeTransfer(&tt, flight_data.back());
        StateTransferParachute(&z0, flight_data.back());

    {
    if (currentCondition <= 2){ //State 2 is after parachute deployment
        descent ds2(tt, z0, Ftab);
        flight_data.append(ds2.fall());
    }
    //State 3 indicates landing. This function should probably never be called in state 3

    return flight_data
};

Situ::SituMonte(float runtime){
    
    Calls SituCalc repeatedly
    Does this until runtime is used up or max_iters is hit to generate a stochastic region
    Should be expanded later to use previous results to impact future predicted regions (maybe?)    
    

    string Upath = FilePath;
    Upath.append("Uncertainty.xml");

    MonteFy StochTab(IntabTR,Upath);

    vector<RKF_data> flight_data;

    int Frun = 0;

    OutputData OD;
    OD.InitializePropertyTree("SituMonte");

    //save start time
    typedef std::chrono::high_resolution_clock Time;
    typedef std::chrono::seconds s;
    typedef std::chrono::duration<float> fsec;
    auto t0 = Time::now();
    
    float avg = 0.0f;
    
    int i = 0;
    //while the predicted runtime if one more iteration is run is less than the total runtime
    while( (float)avg*(i+1) < runtime && i < max_iters)
    {
        try{
            flight_data = SituCalc(true,StochTab)

            if (ShortData == true){
                FlightDataShort FDS;
                for (RKF_data& trajectory : flight_data)
                    FDS += trajectory.getShortData();
                OD.FillPropertyTree(&FDS,(i-Frun+1));
            }
            else{

                FlightDataLong FDL;
                for (RKF_data& trajectory : flight_data)
                    FDL += trajectory.getLongData();
                OD.FillPropertyTree(&FDL,(i-Frun+1));
            }
        }
        catch{
            Frun++;
            std::cout << "Run failed, number of failed runs is: " << Frun << std::endl;
        }
        i++;
        
        auto t1 = Time::now();
        fsec fs = t1 - t0;
        s d = std::chrono::duration_cast<s>(fs)
        avg = (float) d.count() / i
        
    }
    return(OD);
};
*/
