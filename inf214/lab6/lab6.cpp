#include<iostream>
#include<cmath>
#include<thread>
#include<vector>

using namespace std;

int is_prime(int n) {
  if (n <= 1) return false;
  for (int i = 2; i <= sqrt(n); i++) {
    if ((n % i) == 0) return false;
  }
  return true;
}

int primes(int n) {
  int primes_less_than = 0;
  for (int i = 2; i < n-1; i++) {
    if(is_prime(i)) {
      primes_less_than++;
    }
  }
  return primes_less_than;
}



int primes_concurrent(int n) {
  int primes_less_than = 0;
  if(n % 8 == 0) {
    int t = (n/8);
    vector<thread> threads;
    for(int i = 0; i < 8; i++) {
      threads.push_back(thread(primes, ref(t)));
      t = t + t;
    }

    for (auto& th : threads) {
      th.join();
    }
  }
}

int main() {
  cout << is_prime(2) << "\n";
  cout << is_prime(5) << "\n";
  int j = 1;
  for (int i = 1; j < 101; i++) {
    if (is_prime(i)) {
      cout << i << " is prime number " << j << endl;
      j++;
    }
  }
  cout << primes(2) << endl;
  cout << primes(5) << endl;
  cout << primes(11) << endl;
  cout << thread::hardware_concurrency() << endl;
  return 0;
}
