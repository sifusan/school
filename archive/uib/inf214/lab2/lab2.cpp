#include "../alang.hpp"
#include <iostream>
#include <vector>
using namespace std;



int main() {
  A<int> number = 1;
  A<int> next = 1;
  vector<int> turn(100, 0);
  processes ps;
  for (int i : range(0, 100)) {
    ps += [&, i] {
      int assigned = 0;
      int served = 0;
      ATOMIC([&] {turn[i] = number; number = number + 1; assigned = turn[i];});

      enter_critical;
      cout << "Process " << i << " got assigned number " << turn[i] << "\n";
      exit_critical;

      ATOMIC([&] {AWAIT(turn[i] == next);});

      enter_critical;
      if (turn[i] != assigned) {
        cout << "ERROR\n";
        return 0;
      }
      cout << "Process " << i << " just got served as number " << turn[i] <<"\n";
      exit_critical;

      ATOMIC([&] {next = next + 1;});


    };
  }


  return 0;
}
