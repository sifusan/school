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

// C++ requires forward declarations
struct Expr;
struct True;
struct False;
struct Zero;
struct Succ;
struct Pred;
struct IsZero;
struct If;

struct ExprVisitor {
  virtual void visit(True& n) = 0;
  virtual void visit(False& n) = 0;
  virtual void visit(Zero& n) = 0;
  virtual void visit(Succ& n) = 0;
  virtual void visit(Pred& n) = 0;
  virtual void visit(IsZero& n) = 0;
  virtual void visit(If& n) = 0;        
};

struct Expr {
  virtual void accept(ExprVisitor& v) {};
};

struct True : Expr {
  void accept(ExprVisitor& v) { v.visit(*this); }
};

struct False : Expr {
  void accept(ExprVisitor& v) { v.visit(*this); }
};

struct Zero : Expr {
  void accept(ExprVisitor& v) { v.visit(*this); }
};

struct Succ : Expr {
  shared_ptr<Expr> e;
  Succ(shared_ptr<Expr> e) : e(e) {}

  void accept(ExprVisitor& v) { v.visit(*this); }  
};

struct Pred : Expr {
  shared_ptr<Expr> e;
  Pred(shared_ptr<Expr> e) : e(e) {}

  void accept(ExprVisitor& v) { v.visit(*this); }
};

struct IsZero : Expr {
  shared_ptr<Expr> e;
  IsZero(shared_ptr<Expr> e) : e(e) {}

  void accept(ExprVisitor& v) { v.visit(*this); }
};

struct If : Expr {
  shared_ptr<Expr> e0, e1, e2;
  If(shared_ptr<Expr> e0, shared_ptr<Expr> e1, shared_ptr<Expr> e2)
    : e0(e0), e1(e1), e2(e2) {}

  void accept(ExprVisitor& v) { v.visit(*this); }  
};

// helper functions for constructing nodes
shared_ptr<Expr> strue() { return make_shared<True>(); }
shared_ptr<Expr> sfalse() { return make_shared<False>(); }
shared_ptr<Expr> szero() { return make_shared<Zero>(); }
shared_ptr<Expr> ssucc(shared_ptr<Expr> e)
  { return make_shared<Succ>(e); }
shared_ptr<Expr> spred(shared_ptr<Expr> e)
  { return make_shared<Pred>(e); }
shared_ptr<Expr> siszero(shared_ptr<Expr> e)
  { return make_shared<IsZero>(e); }
shared_ptr<Expr> sif(shared_ptr<Expr> e0,
                     shared_ptr<Expr> e1,
                     shared_ptr<Expr> e2) { 
  return make_shared<If>(e0, e1, e2); 
}

struct ShowVisitor : public ExprVisitor {
  string s = "";
  virtual void visit(True& n) { s += "true"; }
  virtual void visit(False& n) { s += "false"; }
  virtual void visit(Zero&) { s += "0"; }
  virtual void visit(Succ& n) {
    ShowVisitor ve;
    n.e->accept(ve);
    s = s + "succ(" + ve.s + ")";
  }
  virtual void visit(Pred& n) {
    ShowVisitor ve;
    n.e->accept(ve);
    s  = s + "pred(" + ve.s + ")";
  }
  virtual void visit(IsZero& n) {
    ShowVisitor ve;
    n.e->accept(ve);    
    s = s + "iszero(" + ve.s + ")";
  }
  virtual void visit(If& n) {
    ShowVisitor ve0, ve1, ve2;
    n.e0->accept(ve0);
    n.e1->accept(ve1);
    n.e2->accept(ve2);
    s += "if(" + ve0.s + " then " + ve1.s + " else " + ve2.s + + ")";
  }  
};

struct EvalVisitor : public ExprVisitor {
  Val v = 0; // just some random initial value
  
  virtual void visit(True& n) { v = true; }
  virtual void visit(False& n) { v = false; }
  virtual void visit(Zero&) { v = 0; }
  virtual void visit(Succ& n) {
    EvalVisitor ve;
    n.e->accept(ve);
    v = static_cast<int>(ve.v) + 1;
  }
  virtual void visit(Pred& n) {
    EvalVisitor ve;
    n.e->accept(ve);
    v = max(static_cast<int>(ve.v) - 1, 0);
  }
  virtual void visit(IsZero& n) {
    EvalVisitor ve;
    n.e->accept(ve);
    v = static_cast<int>(v) == 0;
  }
  virtual void visit(If& n) {
    EvalVisitor ve0, ve;
    n.e0->accept(ve0);
    if (ve0.v) {
      n.e1->accept(ve);
    } else {
      n.e2->accept(ve); 
    }
    v = ve.v;
  }  
};

int main() {
  shared_ptr<Expr> e = sif(strue(), ssucc(spred(ssucc(szero()))), szero());

  ShowVisitor v;
  e->accept(v);
  std::cout << v.s << std::endl;

  EvalVisitor ev;
  e->accept(ev);
  std::cout << static_cast<int>(ev.v) << std::endl;  
}
