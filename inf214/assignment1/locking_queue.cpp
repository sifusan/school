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
  node<E>* head;
  node<E>* rear;
  int _size;
  sem enq_sm = 1;
  sem deq_sm = 0;
  sem deq_run = 2;
  sem inc_enq = 1;
  sem inc_deq = 1;
  sem inc = 1;

public:
  queue() : head(nullptr), rear(nullptr), _size(0) {}

  bool empty() const { return _size == 0; }

  void enqueue(E d) {
    PP(enq_sm);
    node<E>* newNode = new node<E>(d, nullptr);
    if (rear == nullptr) {
      PP(deq_run);
      head = newNode;
      VV(deq_run);
    } else {
      rear->next = newNode;

    }
    rear = newNode;
    PP(inc);
    _size = _size + 1;
    VV(inc);

    VV(deq_sm);
    VV(enq_sm);
  }

  E dequeue() {
    PP(deq_run);
    PP(deq_sm);

    if (empty()) throw "empty queue";
    node<E>* oldHead = head;
    head = head->next;
    if (head == nullptr) {
      rear = nullptr;
    }
    E e = oldHead->data;
    delete oldHead;
    PP(inc);
    _size = _size - 1;
    VV(inc);
    VV(deq_run);
    return e;
  }

  int size() const {
    return _size;
  }

  node_iterator<E> iterator() {
    return head;
  }
};

const int N = 1000;
int test() {
  alang::logl("Preparing tests...");
  int result = 0;
  queue<int> q;

  alang::logl("Testing concurrent enqueuing:");
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
  alang::logl("Testing concurrent dequeuing:");
  q=queue<int>();
  int expected_deq = 0;
  for (int i = 0; i < N; ++i) {
    q.enqueue(1);
  }

  {
    processes ps;
    ps += [&] {
      for (int i = 0; i < N/2; ++i) {
        try { q.dequeue(); } catch (const std::exception & ex) {
          cerr << ex.what() << endl;
          //alang::logl("CAUGHT EXCEPTION EMPTY QUEUE!!!!!!!!!!");
        }
      }
    };
    ps += [&] {
      for (int i = 0; i < N/2; ++i) {
        try { q.dequeue(); } catch (const std::exception & ex) {
          cerr << ex.what() << endl;
          //alang::logl("CAUGHT EXCEPTION EMPTY QUEUE!!!!!!!!!!");
        }
      }
    };
  }
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
  int expected = 0;
  {
    processes ps;
    ps += [&] {
      for (int i = 0; i < N; ++i) {
        try { q.enqueue(1); } catch (const std::exception & ex) {
          cerr << ex.what() << endl;
        }
      }
    };
    ps += [&] {
      for (int i = 0; i < N; ++i) {
        try { q.dequeue(); } catch (const std::exception & ex) {
          cerr << ex.what() << endl;
          //alang::logl("CAUGHT EXCEPTION EMPTY QUEUE!!!!!!!!!!");
        }
      }
    };
  }
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
