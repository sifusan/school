#include "../alang.hpp"

#include <vector>

using namespace std;
const int n = 4;

int main() {
  A<int> number = 1;
  A<int> next = 1;
  vector<int> turn(n, 0);

  A<bool> stop = false;

  {
    processes ps;

    for (int i : range(0, n)) {
      ps += [&, i]{
        while (true) {
          ATO turn[i] = number; number = number + 1; MIC;
          enter_critical; // just to protect output
          cout << "Process " << i << " got turn " << turn[i] << endl;
          exit_critical;

          ATO AWAIT (turn[i] == next); MIC;
          enter_critical; // just to protect output
          cout << "Process " << i << " served on turn " << turn[i] << endl;
          exit_critical;
          ATO next = next + 1; MIC;
          if (next > 20) break;
          // non-cs
        }
      };
    }
  }
}
