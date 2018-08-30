#include "alang.hpp"
using namespace std;

int main() {
  processes ps;
  for (int i : range(0, 10)) ps += [&, i] {
    enter_critical; //remove this for a bad time :)
    cout << i << "+" << i << "=" << i+i << endl;
    exit_critical; //remove this for a bad time :)
  };
}
