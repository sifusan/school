#include "../alang.hpp"
using namespace std;
using namespace alang;
int main() {
  processes ps;
  channel<int> ch;
  ps+=[&ch] {
    for(int i = 0; i < 10; i++) {
      ch.send(i);
    }
    ch.send(-1);
  };

  ps+=[&ch] {
    int r = 0; int sum = 0;
    while(r != -1) {
      ch.receive(r);
      if (r == -1) break;
      sum = sum + r;
      cout << "SUM IS " << sum << endl;
    }
    cout << sum << endl;
  };
}
