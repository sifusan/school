#include "../alang.hpp"
using namespace std;
using namespace alang;
void partition_filter(int pivot, channel<int>& in1, channel<int>& out1, channel<int>& out2) {
  const int EOS = -1;
  int r;
  in1.receive(r);
  while(r != EOS) {
    in1.receive(r);
    if (r <= pivot) {
      out1.send(r);
    } else {
      out2.send(r);
    }
  }
  out1.send(EOS)
}

int main() {
  channel<int> in;
  channel<int> out1;
  channel<int> out2;
  processes ps;
  int n_out1[50] = {};
  int n_out2[50] = {};
  ps+=[&in, &out1, &out2] {
    int n[100];
    for (int i = 0; i < sizeof(n)/sizeof(*n); i++) {
      n[i] = prandom(0, 100);
    }
    for (int j = 0; j < sizeof(n)/sizeof(*n); j++) {
      in.send(n[j]);
      partition_filter(50, in, out1, out2);

    }
  };
  return 0;
}
