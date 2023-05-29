class BankAccount {
  double balance;
  String title;
  int dollarRate = 305;
  BankAccount({this.balance = 0, required this.title});

  void withdraw({required int withdrawAmount}) {
    if (balance == 0 || withdrawAmount > balance) {
      print("Not sufficient Balance , Your Balance is : $balance");
    } else {
      balance = balance - withdrawAmount;
      print("You Withdrawed : -$withdrawAmount");

      print("Your new Balance is : $balance");
    }
  }

  void deposite({required int depositedAmount}) {
    balance = balance + depositedAmount;

    print(
        "You Deposited : $depositedAmount \n And Your Current bank Balance is ${balance}");
  }

  void set dollarDeposite(int dollarAmount) {
    balance += dollarAmount * dollarRate;
  }

  void set dollarWithdraw(int dollarAmount) {
    final pakRs = dollarAmount * dollarRate;
    if (balance > pakRs) {
      balance -= pakRs;
    } else {
      print("Insufficient Balance");
    }
  }

  double get balanceinDollar => balance / dollarRate;
}

void main(List<String> args) {
  BankAccount myBankAcc = BankAccount(title: "Usman");
  print("Initial Bank balance : ${myBankAcc.balance}");
  print("Initial Bank balance : ${myBankAcc.title}");
myBankAcc.dollarDeposite = 100;
myBankAcc.dollarWithdraw = 20;
print("balance after  : ${myBankAcc.balance}");
print("balance in dollars  : ${myBankAcc.balanceinDollar}");


}
