class BankAccount {
  int currentBalance;
  String accountTitle;
  List<int> Transaction = [];
  BankAccount({required this.currentBalance, required this.accountTitle});
  void withdraw({required int withdrawAmount}) {
    if (currentBalance == 0 || withdrawAmount > currentBalance) {
      print("Not sufficient Balance , Your Balance is : $currentBalance");
    } else {
      currentBalance = currentBalance - withdrawAmount;
      print("You Withdrawed : -$withdrawAmount");

      print("Your new Balance is : $currentBalance");
      this.Transaction.add(currentBalance);
    }
  }

  void deposite({required int depositedAmount}) {
    currentBalance = currentBalance + depositedAmount;

    print(
        "You Deposited : $depositedAmount \n And Your Current bank Balance is ${currentBalance}");
    this.Transaction.add(currentBalance);
  }

  void TransactionStatus() {
    if (Transaction.isEmpty) {
      print("No transaction found");
    } else {
      print("Your Transactions are as following: ");

      Transaction.forEach((transaction) {
        print(transaction);
      });
      print("Trasactions Ended");
    }
  }
}

void main(List<String> args) {
  BankAccount BA = BankAccount(
      currentBalance: 4000, accountTitle: "Muhammad Usman Siddiqui");
  print("Account Title :${BA.accountTitle}");
  print("Your Current Bank Balance is : ${BA.currentBalance}");
  BA.TransactionStatus();
  BA.deposite(depositedAmount: 10000);
  BA.withdraw(withdrawAmount: 15000);
  BA.withdraw(withdrawAmount: 5000);
}
