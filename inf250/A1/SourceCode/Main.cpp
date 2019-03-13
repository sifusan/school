#include "Analyzer.h"
#include "Trajectory.h"
#include "Tuple3f.h"
#include <map>
#include <vector>
#include <iostream>
#include <limits>

using namespace std;

/* The inline method for clearing the standard input stream. */
inline void clearStream() {
	cin.clear();
	cin.ignore(std::numeric_limits <std::streamsize> ::max(), '\n');
}

/** The inline method establishing the 'Press ENTER to continue...' functionality. */
inline void pressEnterToContinue()
{
	std::cout << "Press ENTER to continue... " << flush;
	clearStream();
}

/** The main function handling the program and calling the analyzer class methods. */
int main()
{
	Analyzer analyzer;

	string filename = "simple.txt";
	cout << "Enter the file name: ";
	cin >> filename;
	clearStream(); // clears the stream

	int k = 2;
	cout << "Enter the number of clusters: ";
	while (!(cin >> k))
	{
		cout << "Enter the number of clusters:" << endl;
		clearStream(); // clears the stream
	}
	clearStream(); // clears the stream

	bool log = true;

	// Loads the file.
	vector<Trajectory> trajectories;
	if (analyzer.load(filename, trajectories) == false) {
		cout << "Loading the trajectories failed!" << endl;
		pressEnterToContinue();
		return -1;
	}

	if (log)
	{
		cout << "------------TRAJECTORIES------------" << endl;
	}
	cout << "You have loaded '" << trajectories.size() << "' " << (trajectories.size() == 1 ? "trajectory" : "trajectories") << "." << endl;
	if(log)
	{
		for (Trajectory trajectory : trajectories)
		{
			cout << trajectory << endl;
		}
	}

	// Computes the intersections.
	vector<Tuple3f> intersections;
	int number = analyzer.intersections(trajectories, intersections, Tuple3f(0,0,0), 10.0);

	if (log)
	{
		cout << "------------INTERSECTIONS------------" << endl;
	}
	cout << "You have computed '" << number << "' " << (number == 1 ? "intersection" : "intersections") << "." << endl;
	if (log)
	{
		for (Tuple3f intersection : intersections)
		{
			cout << intersection << endl;
		}
	}
	
	if (k > number) {
		cout << "The number k ('" << k << "') was bigger then the number of intersections ('" << number << "'). The value was changed to k=" << number << endl;
		k = number;
	}

	// Compute the clusters.
	int* clusters = analyzer.kmeans(intersections, k, 1000);

	// Generates a map of clusters for nice sorted output.
	map<int, vector<Tuple3f>> m;
	for (int i = 0; i < k; i++) {
		m.insert(pair<int, vector<Tuple3f>>(i, vector<Tuple3f>()));
	}
	for (int i = 0; i < number; i++) {
		int cluster = clusters[i];
		m[cluster].push_back(intersections[i]);
	}

	if (log)
	{
		map<int, vector<Tuple3f>>::iterator it;
		for (it = m.begin(); it != m.end(); ++it) {
			cout << "------------CLUSTER " << it->first << " ------------" << endl;
			for (Tuple3f intersection : it->second)
			{
				cout << intersection << endl;
			}
		}
	}

	// Stores the file.
	if (analyzer.save("clusteres.txt", intersections, clusters) == false) {
		cout << "Saving model failed!" << endl;
		pressEnterToContinue();
		return -1;
	}

	pressEnterToContinue();
	return 1;
}

