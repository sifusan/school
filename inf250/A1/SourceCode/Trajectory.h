#pragma once
#include <vector>
#include <iostream>
#include "Tuple3f.h"

/**
* The simple representation of a 3D trajectory. 
* Each trajectory consists of list of Tuple3f objects.
*
* @author Jan Byška <jan.byska@gmail.com>
*/
class Trajectory
{
private:

	/** The ordered list of vertices along the trajectory. */
	std::vector<Tuple3f> vertices;

public:

	/**
	* Constructs the trajectory with specified vertices.
	*
	* @param vertices		The ordered list of vertices in this trajectory.
	*/
	Trajectory(std::vector<Tuple3f> vertices);

	/** Destructor that releases the allocated memory if needed. */
	~Trajectory();

	/**
	* The new definition for the ostream '<<' operator allowing to print the trajectory into a stream.
	*
	* @param lhs		The reference to the output stream on the left side.
	* @param rhs		The reference to the trajectory object on the right side.
	* @return			The reference to the updated stream.
	*/
	friend std::ostream& operator<< (std::ostream& lhs, const Trajectory& rhs) {
		for (Tuple3f tuple : rhs.vertices)
		{
			lhs << tuple << ";";
		}
		return lhs;
	}

	/**
	* Returns the ordered list of vertices along the trajectory.
	* @return			The ordered list of vertices.
	*/
	std::vector<Tuple3f> GetVertices();
};

