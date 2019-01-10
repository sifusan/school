#include "alang.hpp"
#include <iostream>

using namespace std;

//invariant: gcd(x,y) == gcd(n,m)
int gcd(int n, int m) {
  // your code here
  while(n != m) {
    CO([&] {if (n > m) {n = n - m;}}, [&] {if (n < m) {m = m - n;}}, [&] {cout <<"n is " << n << ". m is " << m << ".\n";});
  }
  cout << "Final n is : " << n <<".Final m is : " << m << ".\n\n";
  return n;
}


int main() {
  logl(gcd(2, 3));
  logl(gcd(25235, 2345));
  logl(gcd(310, 150));
}
