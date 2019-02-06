#include "alang.hpp"
using namespace std;

<<forward declarations>>
<<node class>>
<<node_iterator class>>
<<queue class>>

const int N = 1000;

int main() {
  queue<int> q;

  {
    processes ps;
    ps += [&]{
      for (int i=0; i<N; ++i) {
        q.enqueue(1);
      }
    };
    ps += [&]{
      for (int i=0; i<N; ++i) {
        q.enqueue(2);
      }
    };
  }
  alang::logl("Elements enqueued: ", 2*N);
  alang::logl("Queue size: ", q.size());

  auto it = q.iterator();
  int ctr = 0;
  while (!it.done()) { ++ctr; ++it; }
  alang::logl("Elements in queue: ", ctr);

  alang::logl("---------------");

  int successful_dequeues = 0;
  q = queue<int>(); // a new empty queue
  {
    processes ps;
    ps += [&]{
      for (int i=0; i<N; ++i) {
        q.enqueue(1);
      }
    };
    ps += [&]{
      int c = 0;
      for (int i=0; i<N; ++i) {
        try { q.dequeue(); ++c; } catch (...) {}
      }
      successful_dequeues = c;
    };
  }
  alang::logl("Elements enqueued: ", N);
  alang::logl("Elements dequeued: ", N);
  alang::logl("Successful dequeue count: ", successful_dequeues);

  alang::logl("Queue size: ", q.size());

  it = q.iterator();
  ctr = 0;
  while (!it.done()) { ++ctr; ++it; }
  alang::logl("Elements in queue: ", ctr);
}
