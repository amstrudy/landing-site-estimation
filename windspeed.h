#ifndef INC_WIND_S
#define INC_WIND_S
#include <array>
#include <vector>
#include <Eigen/Dense>
#include "spline-master/src/spline.h"

class windS
{
	public:
		windS(array<vector<double>, 2> _densityCurve, array<vector<double>, 2> _dragCurve, double _mass, double _hellmanCoefficient = 1/7, double _refHeight = 100);
		Vector2d windVelocity(Vector2d acceleration, double pitch, double roll, double altitude);
	private:
		double mass;
		double hellmanCoefficient;
		double refHeight;
		angle(double pitch, double roll);
		tk::spline densityCurve;
		tk::spline dragCurve;

};
#endif
