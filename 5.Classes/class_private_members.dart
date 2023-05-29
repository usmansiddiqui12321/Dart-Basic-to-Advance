//private members is liye banye jaty hn q k
//example: balance of bank
//by getting instance of balance we can modify balance from any where just by having instance of that class
//which risks our vulnerability of Data
//we can make variable private by adding _BeforeName();

class BankAccount {
  final String title;
  int _balance = 0;
  BankAccount({required this.title});
  void deposite(int amount) => _balance += amount;
  void withdraw(int amount) {
    if (_balance > amount) {
      _balance -= amount;
    } else {
      print("error");
    }
  }

  int get currentbalance => _balance;
}

void main(List<String> args) {
  BankAccount myBankAcc = BankAccount(title: "Muhammad Usman Siddiqui");
  myBankAcc._balance =
      1000; //not getting error because we are using private member in same File
  print(myBankAcc._balance);
}
