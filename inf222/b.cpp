#include <iostream>

using namespace std;

struct Expr {
	virtual string show() const = 0;
};

struct True : public Expr {
	string show() const { return "true";}
};


struct False: public Expr {
	string show() const { return "zero";}
};


struct Succ : public Expr {
	shared_ptr<Expr> e;
	string show() const { return "succ (" + e->show() + ")";}
};

shared_ptr<Expr> strue() { return make_shared<True>();}
shared_ptr<Expr> ssucc(shared_ptr<Expr> e) {
	return make_shared<Succ>(e);}

int main() {
	shared_otr<Expr> e = ssucc(ssucc(strue()));
	cout << e -> show() << endl;
}
