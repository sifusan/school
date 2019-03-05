#include <iostream>
#include <memory>
#include <algorithm>

using std::shared_ptr;
using std::make_shared;
using std::string;
using std::max;

struct cast_error {};

class Val {
  enum { int_v, bool_v } which;
  union { int i; bool b; } v;
public:
  Val(int i) : which(int_v) { v.i = i; }
  Val(bool b) : which(bool_v) { v.b = b; }
  operator int() {
    if (which != int_v) throw cast_error();
    return v.i;
  }
  operator bool() {
    if (which != bool_v) throw cast_error();
    return v.b;
  }
};

struct Expr {
  virtual string show() const = 0;
  virtual Val eval() const = 0;
};

struct True : Expr {
  string show() const { return "true"; }
  Val eval() const { return true; }
};
struct False : Expr {
  string show() const { return "false"; }
  Val eval() const { return false; }
};
struct Zero : Expr {
  string show() const { return "zero"; }
  Val eval() const { return 0; }
};

struct Succ : Expr {
  shared_ptr<Expr> e;
  Succ(shared_ptr<Expr> e) : e(e) {}

  string show() const { 
    return string("succ(" + e->show() + ")"); 
  }
  Val eval() const {
    int i = e->eval();
    return i+1;
  }
};
struct Pred : Expr {
  shared_ptr<Expr> e;
  Pred(shared_ptr<Expr> e) : e(e) {}

  string show() const { 
    return string("pred(" + e->show() + ")"); 
  }
  Val eval() const {
    int i = e->eval();
    return max(i - 1, 0);
  }  
};
struct IsZero : Expr {
  shared_ptr<Expr> e;
  IsZero(shared_ptr<Expr> e) : e(e) {}

  string show() const { 
    return string("iszero(" + e->show() + ")"); 
  }
  Val eval() const {
    int i = e->eval();    
    return i == 0;
  }  
};
struct If : Expr {
  shared_ptr<Expr> e0, e1, e2;
  If(shared_ptr<Expr> e0, shared_ptr<Expr> e1, shared_ptr<Expr> e2)
    : e0(e0), e1(e1), e2(e2) {}

  string show() const {
    return string("if(" + e0->show() + ", " + e1->show() + ", " + 
                  e2->show() + ")");
  }
  Val eval() const {
    bool b = e0->eval();        
    if (b) return e1->eval(); else return e2->eval();
  }  
};

shared_ptr<Expr> strue() { return make_shared<True>(); }
shared_ptr<Expr> sfalse() { return make_shared<False>(); }
shared_ptr<Expr> szero() { return make_shared<Zero>(); }
shared_ptr<Expr> ssucc(shared_ptr<Expr> e) { return make_shared<Succ>(e); }
shared_ptr<Expr> spred(shared_ptr<Expr> e) { return make_shared<Pred>(e); }
shared_ptr<Expr> siszero(shared_ptr<Expr> e) { return make_shared<IsZero>(e); }
shared_ptr<Expr> sif(shared_ptr<Expr> e0, 
                     shared_ptr<Expr> e1, 
                     shared_ptr<Expr> e2) { 
  return make_shared<If>(e0, e1, e2); 
}

int main() {
  shared_ptr<Expr> e = sif(strue(), 
                           ssucc(spred(ssucc(szero()))), 
                           szero());
  std::cout << e->show() << std::endl;
  std::cout << static_cast<int>(e->eval()) << std::endl;  
}
