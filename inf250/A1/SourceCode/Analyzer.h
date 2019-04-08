#include "IAnalyzer.h"
#include <map>
#include <fstream>
#include <sstream>
#include <iomanip>
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


        bool fancy_check(Tuple3f t1, Tuple3f t2, Tuple3f center, const int radius, vector<Tuple3f>& v) {

            float a = pow((t2.GetX() - t1.GetX()), 2) +
                      pow((t2.GetY() - t1.GetY()), 2) +
                      pow((t2.GetZ() - t1.GetZ()), 2); 
            float b = 2 * ((t2.GetX() - t1.GetX()) * (t1.GetX() - center.GetX()) +
                           (t2.GetY() - t1.GetY()) * (t1.GetY() - center.GetY()) +
                           (t2.GetZ() - t1.GetZ()) * (t1.GetZ() - center.GetZ())); 
            float c = pow((t1.GetX() - center.GetX()), 2) +
                      pow((t1.GetY() - center.GetY()), 2) +
                      pow((t1.GetZ() - center.GetZ()), 2) -
                      pow(radius, 2);
            
            float delta = pow(b, 2) - 4 * a * c;
            if (delta > 0) {
                float d1 = (-b-sqrt(delta))/(2*a);
                float d2 = (-b+sqrt(delta))/(2*a);
                
                float x1 = t1.GetX() + d1*(t2.GetX() - t1.GetX());
                float y1 = t1.GetY() + d1*(t2.GetY() - t1.GetY());
                float z1 = t1.GetZ() + d1*(t2.GetZ() - t1.GetZ());

                float x2 = t2.GetX() + d2*(t1.GetX() - t2.GetX());
                float y2 = t2.GetY() + d2*(t1.GetY() - t2.GetY());
                float z2 = t2.GetZ() + d2*(t1.GetZ() - t2.GetZ());

                Tuple3f inter_1(x1,y1,z1);
                Tuple3f inter_2(x2,y2,z2);
                v.push_back(inter_1);
                v.push_back(inter_2);
                return true;
            } else if (delta == 0) {
                float d=-b/2*a;
                float x = t1.GetX() + d*(t2.GetX() - t1.GetX());
                float y = t1.GetY() + d*(t2.GetY() - t1.GetY());
                float z = t1.GetZ() + d*(t2.GetZ() - t1.GetZ());
                Tuple3f inter(x, y, z);
                v.push_back(inter);
                return true;
            } else {
                return false;
            }
        }

        Tuple3f project(Tuple3f u, Tuple3f v) {
            float d = Tuple3f::dot_product(u, v);
            float a = Tuple3f::t_abs(v);
            return v * (d/a);  
        }

        Tuple3f converge_on_intersection(Tuple3f t1, Tuple3f t2, Tuple3f center, const int radius) {
            float r1 = Tuple3f::distance(center, t1);
            float r2 = Tuple3f::distance(center, t2);
            Tuple3f largest_tuple = (r2 < r1 ? t1 : t2) ;
            Tuple3f smallest_tuple = (r2 < r1 ? t2 : t1);

            Tuple3f middle_tuple;
            float middle_radius = -1;
            while(middle_radius != radius) {
                middle_tuple = (largest_tuple + smallest_tuple)/2; 
                middle_radius = Tuple3f::distance(center, middle_tuple); 
                if (middle_radius > radius) {
                    largest_tuple = middle_tuple;
                } else if (middle_radius < radius) {
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
            for (int i=0; i < trajectories.size(); i++) {
                Trajectory trajectory = trajectories.at(i);
                vector<Tuple3f> v = trajectory.GetVertices();
                Tuple3f prev_tuple = v.at(0); 
                float distance_prev = Tuple3f::distance(center, prev_tuple);

                if (distance_prev == radius) {
                    intersections.push_back(prev_tuple);
                    nr_intersections++;
                }
                for (int j=1; j<v.size(); j++) {
                    Tuple3f current_tuple = v.at(j);
                    distance_prev = Tuple3f::distance(center, prev_tuple);
                    float distance_curr = Tuple3f::distance(center, current_tuple);
                    vector<Tuple3f> t;

                    if (distance_curr == radius) {
                        intersections.push_back(current_tuple);
                        nr_intersections++;
                    }

                    if (((distance_prev > radius) && (distance_curr < radius)) || 
                        ((distance_prev < radius) && (distance_curr > radius))) {
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
            int* numbers = new int[points.size()]; 
            vector<Tuple3f> random_centroids;
            vector<Tuple3f> points_copy = points;
            srand(time(NULL));
            for (int i = 0; i < k; i++) {
                int r = rand() % points_copy.size(); 
                random_centroids.push_back(points_copy.at(r));
                points_copy.erase(points_copy.begin() + r);
            }

            for (int x = 0; x < iterations; x++) {
                Tuple3f sum[k];
                for (int i = 0; x < k; x++) {
                    sum[x] = Tuple3f(0,0,0);
                }
                int count[k];
                for (int x = 0; x < k; x++) {
                    count[x] = 0;
                }
                for (int j = 0; j < points.size(); j++) {
                    numbers[j] = 0;
                    float min_dist = Tuple3f::distance(points.at(j), random_centroids.at(0)); 
                    numbers[j] = 0;

                    for (int x = 1; x < k; x++) {
                        float next_dist = Tuple3f::distance(points.at(j), random_centroids.at(x));
                        if (next_dist < min_dist) {
                            min_dist = next_dist;
                            numbers[j] = x;
                        }
                    }
                    sum[numbers[j]] = sum[numbers[j]] + points.at(j);
                    count[numbers[j]] = count[numbers[j]] + 1;
                } 
                for (int j = 0; j < k; j++) {
                    Tuple3f new_sum = sum[j]/count[j];
                    random_centroids.at(j) = new_sum;
                }
            } 
            return numbers;
        }

        virtual bool save(const string& filename, const vector<Tuple3f> intersections, const int* clusters) {
            ofstream ofs {filename};
            if (!ofs) return false;
            for (int i =0; i < intersections.size(); i++) {
                Tuple3f t = intersections.at(i);
                float x = t.GetX();
                float y = t.GetY();
                float z = t.GetZ();
                int c = clusters[i];
                ofs << x << ',' << y << ',' << z << " - " << c << "\n"; 
            }
            free((int*)clusters);
            return true;
        }
};
