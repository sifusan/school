#include "Vector3f.h"
#include <cmath>

Vector3f::Vector3f() : Tuple3f(0,0,0)
{
}
Vector3f::Vector3f(const float x, const float y, const float z) : Tuple3f(x, y, z)
{
}
Vector3f::Vector3f(const Tuple3f& other) : Tuple3f(other)
{
}
Vector3f::~Vector3f()
{
}

void Vector3f::Normalize()
{
	float magnitude = this->Magnitude();
	this->x = this->x / magnitude;
	this->y = this->y / magnitude;
	this->z = this->z / magnitude;
}

float Vector3f::Magnitude()
{
	return std::sqrt(this->x*this->x + this->y*this->y + this->z * this->z);
}

float Vector3f::Dot(const Vector3f other)
{
	return this->x*other.x + this->y*other.y + this->z*other.z;
}
