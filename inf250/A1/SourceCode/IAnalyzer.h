#pragma once

#include <vector>
#include <string>
#include "Tuple3f.h"
#include "Trajectory.h"

/**
* The default abstract class that needs to be implemented during the assignment.
*
* @author Jan Byška <jan.byska@gmail.com>
*/
class IAnalyzer
{
public:

	/** 
	* The method will load and parse the given file.
	* The file contains list of trajectories that should be loaded and stored in the given vector ('trajectories').
	* Trajectory is a 3D polyline with points being specified in the file.
	* This also means that the order of the loaded points is important.
	*
	* The file is identified by either relative or absolute path given by the 'filename' attribute.
	* If the file cannot be open the method will return FALSE.
	* If the file is successfully parsed the method will return TRUE.
	*
	* Each line in the file corresponds exactly to one and only one trajectory (polyline).
	* The file itself can contain unknown number of trajectories (i.e, there is unknown number of lines of text). 
	* 
	* The trajectory is defined by set of 3D points with x,y,z coordinates separated by comas (,).
	* Each coordinate can be either number with floating decimal point or simple integer number. In both cases with unknown number of digits.
	* The decimal point is doted as a dot (.).
	* The numbers can be negative, positive, or zero.
	*
	* Each point (triplet of x,y,z, numbers) is then separated by a semicolon (;)
	* 
	* There is no semicolon on the end of each line.
	* You don't have to check for wrong data, e.g., missing coordinates, wrong separators, etc. 
	* If you find any mistake in the data please let me know ASAP.
	*
	* Examples:
	* 1.2,2.1,1.3;5.5,5.4,2;15.0,15,2.1;17.0,16.4,3.3;18.4,17.1,5.2
	* 1,2,0;3,7,0;5,-5,0;15,-15,0;17,-16,0;18,-17,0 
	* -100,-100,-100;100,100,100
	*
	* @param filename			The relative or absolute path for the file.
	* @param trajectories		After this method ends this variable should contain all the loaded trajectories.
	* @return					TRUE if the loading was successful; FALSE otherwise					
	*/
	virtual bool load(const std::string& filename, std::vector<Trajectory>& trajectories) = 0;

	/**
	* This method will compute the intersections between the given trajectories and a sphere specified by its center and radius.
	* The computes intersections are returned via 'intersections' attribute.
	* The method also returns the number of these intersections.
	*
	* @param trajectories		The input trajectories.
	* @param intersections		After this method ends this variable should contain all the computed intersections.
	* @param center				The center of the sphere - by default this will be (0,0,0).
	* @param radius				The radius of the sphere - by default this will be 10.
	* @return					The number of computed intersections.
	**/
	virtual int intersections(const std::vector<Trajectory>& trajectories, std::vector<Tuple3f>& intersections, const Tuple3f center, const float radius) = 0;

	/** 
	* The implementation of the K-means algorithm. 
	* https://en.wikipedia.org/wiki/K-means_clustering
	* YOU ARE NOT ALLOWED TO USE ANY EXISTING IMPLEMENTATION OR LIBRARY - DO IT YOURSELF, IT IS EASY AND FUN :)
	* 
	* The method takes the list of points and clusters them into the 'k' clusters.
	* The clustering means splitting points into the groups of points based on their distance.
	* See: https://en.wikipedia.org/wiki/Cluster_analysis	
	*
	* The method will return an array of assigned cluster numbers ordered in the same way as the corresponding input points.
	* The array of cluster numbers is returned using a pointer.
	* !!!!! YOU NEED TO ALLOCATE MEMORY FOR THIS POINTER !!!!!
	* The cluster numbers start from '0' and goes up to 'k-1'.
	* The K-means algorithm was explained with pseudo-code during the C++ lectures (see the presentation at mitt.uib.no).
	*
	* @param points				The input point.
	* @param k					The number of output clusters - you can assume that the k is always smaller then the number of points.
	* @param iterations			The number of iterations that will be performed.
	*/
	virtual int* kmeans(const std::vector<Tuple3f>& points, const int k, const int iterations) = 0;

	/**
	* The method stores the computed intersections and corresponding clusters into the given file.
	* The file is identified by either relative or absolute path given by the 'filename' attribute.
	* 
	* Each intersections and its corresponding cluster will be printed on a single line.
	* Each line will be in the format: 'x,y,z - cluster'.
	* The x,y,z corresponds to the intersection coordinates and cluster is a cluster number from k-means algorithm (i.e., number between 0 and k-1)
	* 
	* Operator << in Tuple3f - can be helpful when printing the results.
	*
	* Example:
	* 6.96811,6.88356,2.01545 - 0
	* 7.07107,-7.07107,0 - 0
	* 7.07107,7.07107,0 - 0
	* -7.07107,-7.07107,0 - 1
	* 
	* @param filename			The relative or absolute path for the file.
	*/
	virtual bool save(const std::string& filename, const std::vector<Tuple3f> intersections, const int* clusters) = 0;
};

