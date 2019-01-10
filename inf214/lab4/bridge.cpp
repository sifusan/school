#include "../alang.hpp"
#include <condition_variable>
#include <mutex>
#include <random>
#include <string>

using namespace std;

enum Direction {NORTH, SOUTH};

string direction_to_text(Direction d) {
  switch (d) {
    case NORTH: return "NORTH"; break;
    case SOUTH: return "SOUTH"; break;
  }
}

Direction flip_dir(Direction dir) {
  if (dir == NORTH) return SOUTH;
  else return NORTH;
}

class Bridge {
  Direction current_direction;
  condition_variable cv;
  mutex car_mutex;
  int num_cars = 0;
  int max_cars;

public:
  Bridge() : max_cars(10)  {}

  // V
  int car_arrive(Direction direction) {
    unique_lock<mutex> lock(car_mutex);
    if (num_cars == 0) {
      current_direction = flip_dir(direction);
    }

    if(current_direction == direction) {
      cout << "WAITING FOR BRIDGE TO FREE UP, GOING " << direction_to_text(direction) << "\n";
      return 0;
    }
    num_cars++;
    cout << "THERE ARE " << num_cars << " CARS ON THE BRIDGE\n";
    return 1;
  }
  // P
  void car_leave() {
    unique_lock<mutex> lock(car_mutex);
    num_cars--;
  }

  Direction get_direction() {
    return current_direction;
  }
};

Direction get_random_dir() {
  int r = rand() % 1;
  if (r == 0) { return NORTH; };
  if (r == 1) { return SOUTH; };
}



auto car(Bridge& b,
         int max_crossing,     // cross at most this many times
         int min_crossing_time, // crossing takes at least this long
         int max_crossing_time, // crossing takes at most this long
         int min_idle_time,     // wait at least this long before trying to cross again
         int max_idle_time) {     // wait at most this long before trying to cross again
  return [=, &b]{

    Direction direction = get_random_dir();
    random_device rd;
    //note: don't care about perfect uniform distribution
    int crossing_time = min_crossing_time + (rand() % (max_crossing - min_crossing_time + 1));
    int idle_time = min_idle_time + (rand() % (max_idle_time - min_idle_time + 1));
    int  crossing = (rand() % max_crossing) + 1;
    // this_thread::sleep_for(chrono::seconds(crossing_time));
    while(crossing > 0) {
      int a = b.car_arrive(direction);
      if (a == 1) {
        cout << "CAR GOING FROM " << direction_to_text(direction) << " TO " << direction_to_text(b.get_direction()) << "\n";
        this_thread::sleep_for(chrono::seconds(crossing_time));
        cout << "CAR ARRIVED TO OTHER SIDE\n";
        b.car_leave();
        crossing--;
        direction = flip_dir(direction);
      } else{
        cout << "ATTEMPTED TO GO FROM " << direction_to_text(direction) << " TO " << direction_to_text(b.get_direction()) << "\n";
        cout << "PROCEED TO WAIT\n";
        this_thread::sleep_for(chrono::seconds(idle_time));
      }
    }

    // loop where car crosses n times, where n < max_crossing
    // crossing means calling b.car_arrive(dir) and later b.car_leave(dir)
  };
}

int main() {
  Bridge bridge;
  processes ps;
  // ps+= car(bridge, 2, 2, 2, 2, 2);
  for (int i = 0; i < 10; i++) {
    ps += car(bridge, 2, 2, 5, 5, 5);
  }
  // bridge.car_arrive(UNCHOSEN);
}
