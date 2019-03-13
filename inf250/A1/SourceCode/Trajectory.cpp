#include "Trajectory.h"

Trajectory::Trajectory(std::vector<Tuple3f> vertices)
{
	this->vertices = vertices;
}

Trajectory::~Trajectory()
{
}

std::vector<Tuple3f> Trajectory::GetVertices()
{
	return this->vertices;
}
