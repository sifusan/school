#include "IAnalyzer.h"
#include <fstream>
#include <sstream>
#include <math.h>
using namespace std;

class Analyzer : IAnalyzer {
    public:
        
        virtual bool load(const string& filename, vector<Trajectory>& trajectories) {
            ifstream ifs {filename};
            if (!ifs) return false;
            
            string line;
            while(getline(ifs, line)) {
                vector<Tuple3f> tuple_vector;
                line+= ";";
                istringstream iss (line);
                double x;
                char c0;
                double y;
                char c1;
                double z;
                char c2;
                while(iss >> x >> c0 >> y >> c1 >> z >> c2) {
                    Tuple3f tuple(x, y, z);
                    tuple_vector.push_back(tuple);
 
                }
                Trajectory trajectory(tuple_vector);
                trajectories.push_back(trajectory); 
            }
            return true;
        }

        Tuple3f converge_on_intersection(Tuple3f t1, Tuple3f t2, Tuple3f center, const int radius) {
            float r1 = Tuple3f::distance(center, t1);
            float r2 = Tuple3f::distance(center, t2);
            Tuple3f largest_tuple = (r2 < r1 ? t1 : t2) ;
            Tuple3f smallest_tuple = (r2 < r1 ? t2 : t1);
            float largest_x = largest_tuple.GetX();
            float largest_y = largest_tuple.GetY();
            float largest_z = largest_tuple.GetZ();

            Tuple3f middle_tuple;
            float middle_radius = -1;
            while(middle_radius != radius) {
                middle_tuple = (largest_tuple + smallest_tuple)/2; 
                middle_radius = Tuple3f::distance(center, middle_tuple); 
                if (middle_radius > radius) {
                    largest_tuple = middle_tuple;
                } else {
                    smallest_tuple = middle_tuple;
                }
            }
            return middle_tuple;
        }

        virtual int intersections(
                const vector<Trajectory>& trajectories,
                vector<Tuple3f>& intersections,
                const Tuple3f center,
                const float radius) {

            int nr_intersections = 0;
            //float inter_distance = Tuple3f::distance(origo, center) + radius;
            for (int i=0; i < trajectories.size(); i++) {
                Trajectory trajectory = trajectories.at(i);
                vector<Tuple3f> v = trajectory.GetVertices();
                Tuple3f prev_tuple = v.at(0);
                for (int j=1; j < v.size(); j++) {
                    Tuple3f current_tuple = v.at(j);
                    float distance_prev = Tuple3f::distance(center, prev_tuple);
                    float distance_curr = Tuple3f::distance(center, current_tuple);

                    if (distance_curr == radius) {
                        cout << "FOUND INTERSECTION" << endl;
                        intersections.push_back(current_tuple);
                        nr_intersections++;
                    }

                    if (((distance_prev > radius) && (radius > distance_curr)) || 
                        ((distance_prev < radius) && (radius < distance_curr))) {
                        cout << "FOUND INTERSECTION " << endl;
                        cout << "current " << current_tuple << endl;
                        cout << "previous" << prev_tuple << endl;
                        Tuple3f intersection = converge_on_intersection(current_tuple, prev_tuple, center, radius);
                        intersections.push_back(intersection);
                        nr_intersections++;
                    }
                    prev_tuple = v.at(j);
                }
            } 
            return nr_intersections;
        }   

        virtual int* kmeans(const vector<Tuple3f>& points, const int k, const int iterations) {
            int t = 2;
            int *a = &t;
            return a;
        }

        virtual bool save(const string& filename, const vector<Tuple3f> intersections, const int* clusters) {
            return true;
        }
};
