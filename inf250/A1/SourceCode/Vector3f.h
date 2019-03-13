#pragma once
#include "Tuple3f.h"

/**
* The extension of the Tuple3f class adding some methods specific for vectors. 
*
* @author Jan By�ka <jan.byska@gmail.com>
*/
class Vector3f : public Tuple3f
{
public:

	/** The default constructor that sets all coordinates to 0. */
	Vector3f();

	/**
	* The constructor allowing to set the actual x,y,z, coordinates.
	*
	* @param x			The X coordinate.
	* @param y			The Y coordinate.
	* @param z			The Z coordinate.
	*/
	Vector3f(const float x, const float y, const float z);

	/**
	* The copy constructor allowing us to create vector from any Tuple3f.
	*
	* @param other		The tuple its values will be copied into the new vector.
	*/
	Vector3f(const Tuple3f& other);

	/** Destructor that releases the allocated memory if needed. */
	~Vector3f();

	/** Normalizes this vector. */
	void Normalize();
	
	/** 
	* Returns the magnitude of this vector. 
	* 
	* @return			The magnitude of this vector.
	*/
	float Magnitude();

	/**
	* Computes the dot product between this and some other vector.
	* 
	* @param other		The other vector.
	* @return			The dot product between this and the given vector.
	*/
	float Dot(const Vector3f other);
};

