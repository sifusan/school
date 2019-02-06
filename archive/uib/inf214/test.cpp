#include <iostream>
#include <vector>
#include <thread>
using namespace std;
int v = 0;
bool go = false;
void proc1() {
	while(!go) {
	}
	cout << v << endl;
}

void proc2() {
	v = 1;
	go = true;
}

int main() {
	while(true) {

		vector<thread> threads = vector<thread>();
		threads.push_back(thread(proc1));
		threads.push_back(thread(proc2));

		for (auto& t : threads) {
			t.join();
		}
		if (v == 0) {
			cout << "ERROR" << endl;
		}
		go = false;
		v = 0;
	}
}
