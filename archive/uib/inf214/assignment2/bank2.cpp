#include <iostream>
#include <mutex>
#include <thread>
#include <vector>
#include <condition_variable>


using namespace std;

class Bank2 {
  int balance = 0, deposited = 0, withdrawn = 0; // (deposited >= withdrawn) && balance >= 0
  bool withdraw_in_progress = false;
  condition_variable cv;
  mutex bank_mutex;
  mutex withdraw_mutex;

public:
  Bank2 () {}
  int deposit(int amount) {
    unique_lock<mutex> lock(bank_mutex);
    // cout << "ATTEMPTING TO DEPOSIT " << amount << " TO " << balance << "\n";

    balance = balance + amount;
    deposited = deposited + amount;
    cout << "DEPOSITED " << amount <<". BALANCE IS " << balance << "\n";
    cv.notify_one();
    return balance;
  }

  int withdraw(int amount) {
    unique_lock<mutex> lock(withdraw_mutex);
    while (balance-amount < 0 || deposited < withdrawn || withdraw_in_progress) {
      cout << "ATTEMPTING TO WITHDRAW " << amount << " FROM " << balance << "\n";
      cv.notify_one();
    }
    unique_lock<mutex> lock_2(bank_mutex);
    withdraw_in_progress = true;
    balance = balance - amount;
    withdrawn = withdrawn + amount;
    cout << "WITHDREW " << amount <<". BALANCE IS " << balance << "\n";
    cv.notify_one();
    withdraw_in_progress = false;
    return balance;
  }

  int get_balance() {
    return balance;
  }

  int get_deposited() {
    return deposited;
  }

  int get_withdrawn() {
    return withdrawn;
  }
};


void do_deposits(int n, int amount, Bank2& bank2) {
  for (int i = 0; i < n; i++) {
    bank2.deposit(amount);
  }
}

void do_withdrawals(int n, int amount, Bank2& bank2) {
  for (int i = 0; i < n; i++) {
    bank2.withdraw(amount);
  }
}

int main() {
  Bank2 bank2;
  vector<thread> threads;

  cout << "TESTING EVEN BALANCE: \n";
  for (int i = 0; i < 1000; i++) {
    threads.push_back(thread(do_deposits, 10, 10, ref(bank2)));
    threads.push_back(thread(do_withdrawals, 10, 10, ref(bank2)));
  }
  for (auto& t : threads) {
    t.join();
  }

  cout << "Total money deposited: " << bank2.get_deposited() << "\n";
  cout << "Total money withdrawn: " << bank2.get_withdrawn() << "\n";
  cout << "Total balance: " << bank2.get_balance() << "\n";
  if (bank2.get_balance() != 0) {
    cout << "TEST EVEN BALANCE FAILED!\n";
    return -1;
  }

  Bank2 bank2_2;
  threads = vector<thread>();

  cout << "TESTING POSITIVE BALANCE: \n";
  for (int i = 0; i < 1000; i++) {
    threads.push_back(thread(do_deposits, 11, 10, ref(bank2_2)));
    threads.push_back(thread(do_withdrawals, 10, 10, ref(bank2_2)));
  }

  for (auto& t : threads) {
    t.join();
  }

  cout << "Total money deposited: " << bank2_2.get_deposited() << "\n";
  cout << "Total money withdrawn: " << bank2_2.get_withdrawn() << "\n";
  cout << "Total balance: " << bank2_2.get_balance() << "\n";
  if (bank2_2.get_balance() <= 0) {
    cout << "TEST POSITIVE BALANCE FAILED!\n";
    return -1;
  } else {

    cout << "TEST POSITIVE BALANCE SUCCESS\n";
  }

  Bank2 bank2_3;
  threads = vector<thread>();

  cout << "TESTING NEGATIVE BALANCE: \n";
  // for (int i = 0; i < 100; i++) {
  //   threads.push_back(thread(do_deposits, 10, 10, ref(bank2_3)));
  //   threads.push_back(thread(do_withdrawals, 10, 10, ref(bank2_3)));
  // }
  threads.push_back(thread(do_deposits, 1, 1, ref(bank2_3)));
  threads.push_back(thread(do_withdrawals, 1, 2, ref(bank2_3)));
  threads.push_back(thread(do_withdrawals, 1, 1, ref(bank2_3)));
  threads.push_back(thread(do_deposits, 1, 1, ref(bank2_3)));
  threads.push_back(thread(do_deposits, 1, 1, ref(bank2_3)));

  //Wait before joining last threads so the program hangs waiting to withdraw
  for (int i = 0; i < threads.size(); i++) {
    if (i>=(threads.size()-3)) {
      cout << threads[i].get_id() << "\n";
      cout << "WAITING FOR WITHDRAW TO COMPLETE, NEEDS MORE DEPOSITS\n";
      this_thread::sleep_for(chrono::seconds(2));

    }
    threads[i].join();
  }

  cout << "Total money deposited: " << bank2_3.get_deposited() << "\n";
  cout << "Total money withdrawn: " << bank2_3.get_withdrawn() << "\n";
  cout << "Total balance: " << bank2_3.get_balance() << "\n";

  if (bank2_3.get_balance() != 0) {
    cout << "TEST NEGATIVE BALANCE FAILED!\n";
    return -1;
  }
  cout << "ALL TESTS COMPLETED SUCCESSFULLY.\n";
  return 0;
}
