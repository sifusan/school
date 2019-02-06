#include <iostream>
#include <assert.h>
#include "alang.hpp"
using namespace std;

template <typename E> class queue;    // forward declaration
template <typename E> class node_iterator;  // forward declaration

template <typename E>
class node {
  E data;
  node<E>* next;
  node(E d, node<E>* n) : data(d), next(n) {}
public:
  friend class queue<E>;         // allow queue<E> to access private members
  friend class node_iterator<E>; // allow node_iterator<E> to access private members
};

template <typename E>
class node_iterator {
  node<E>* it;
public:
  node_iterator(node<E>* n) : it(n) {}
  node_iterator& operator++() { assert(it != nullptr); it = it->next; return *this; }
  bool done() const { return it == nullptr; }
  E operator*() const { assert(it != nullptr); return it->data; }
};


template <typename E>
class queue {
  A<node<E>*> head;
  A<node<E>*> rear;
  A<int> _size;
  A<bool> eqLock;
  A<bool> dqLock;
public:
  queue() : head(nullptr), rear(nullptr), _size(0), eqLock(true), dqLock(true) {}
  bool empty() const { return _size == 0; }

  void enqueue(E d) {
    ATOMIC([&]{AWAIT(eqLock == true); eqLock = false; });
    node<E>* newNode = new node<E>(d, nullptr);

    if (rear == nullptr) {
      head = newNode;
    } else {
      rear.read()->next = newNode;
    }
    rear = newNode;

    ATOMIC([&] { _size = _size + 1; eqLock = true; });
  }


  E dequeue() {
    ATOMIC([&]{ AWAIT(!(rear == nullptr) && (_size >= 1) && (dqLock == true)); dqLock=false;});

    node<E>* oldHead = head;
    head = head.read()->next;
    if (head == nullptr) {
      rear = nullptr;
    }
    E e = oldHead->data;
    delete oldHead;
    ATOMIC([&] { _size = _size - 1; dqLock=true;});
    return e;
  }

  int size() const {
    return _size;
  }

  node_iterator<E> iterator() {
    return head.read();
  }
};

const int N = 1000;

int test() {
  alang::logl("Preparing tests...");
  int result = 0;
  queue<int> q;

  alang::logl("Testing multithreaded enqueuing:");
  int expected_enq = 2*N;
  {
    processes ps;
    ps += [&] {
      for (int i = 0; i<N; ++i) {
        q.enqueue(1);
      }
    };
    ps +=[&] {
      for (int i = 0; i<N; ++i) {
        q.enqueue(2);
      }
    };
  }
  auto it = q.iterator();
  int it_size = 0;
  while(!(it.done())) { ++it_size; ++it;};

  alang::logl("Expected elements in queue: ", expected_enq);
  alang::logl("Number of elements in queue ", q.size());
  alang::logl("Number of elements according to iterator: ", it_size);
  if ((q.size() != expected_enq) || (it_size != expected_enq))  {
    result = -1;
    alang::logl("ERROR: queue size differs from exptected size!");
  }
  cout << "\n";
  alang::logl("Testing multithreaded dequeuing:");
  q=queue<int>();

  for (int i = 0; i < N; ++i) {
    q.enqueue(1);
  }

  {
    processes ps;
    ps += [&] {
      for (int i = 0; i < N/2; ++i) {
        q.dequeue();
      }
    };
    ps += [&] {
      for (int i = 0; i < N/2; ++i) {
        q.dequeue();
      }
    };
  }

  int expected_deq = 0;
  it = q.iterator();
  it_size = 0;
  while(!(it.done())) { ++it_size; ++it;};
  alang::logl("Expected elements in queue: ", expected_deq);
  alang::logl("Number of elements in queue ", q.size());
  alang::logl("Number of elements according to iterator: ", it_size);
  if ((expected_deq != q.size()) || (it_size != expected_deq)) {
    result = -1;
    alang::logl("ERROR: queue size differs from exptected size!");
  }
  cout << "\n";

  alang::logl("Testing concurrent enqueueing and dequeuing:");
  q=queue<int>();


  {
    processes ps;
    ps += [&] {
      for (int i = 0; i < N; ++i) {
        q.enqueue(1);
      }
    };
    ps += [&] {
      for (int i = 0; i < N; ++i) {
        q.dequeue();
      }
    };
  }

  int expected = 0;
  it = q.iterator();
  it_size = 0;
  while(!(it.done())) { ++it_size; ++it;};
  alang::logl("Expected elements in queue: ", expected);
  alang::logl("Number of elements in queue ", q.size());
  alang::logl("Number of elements according to iterator: ", it_size);
  if (expected != q.size() || (it_size != expected)) {
    result = -1;
    alang::logl("ERROR: queue size differs from exptected size!");
  }
  cout << "\n";

  return result;
}

int main() {
  int t = test();
  if (t == 0) {
    cout << "Tests passed\n";
  }else {
    cout << "Tests failed\n";
  }
  // bool b = true;
  // while(b) {
  //   int t = test();
  //   if (t == 0) {
  //     alang::logl("Passed tests\n");
  //   } else {
  //     alang::logl("Failed tests\n");
  //     b = false;
  //   }
  // }
}
