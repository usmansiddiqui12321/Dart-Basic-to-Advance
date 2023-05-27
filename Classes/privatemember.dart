
import 'class_private_members.dart';

void main(List<String> args) {
  BankAccount myBankAcc = BankAccount(title: "title");
 // myBankAcc._balance=1000; Getting Error Because we cannot access Private member outside that File
 // print(myBankAcc._balance);
 myBankAcc.deposite(1000);
 print(myBankAcc.currentbalance);
}
