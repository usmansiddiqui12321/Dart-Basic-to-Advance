//Static variable and Method
class bank {
  static const String Meezan = "Meezan Bank";
  static const String UBL = "United Bank";

  static const String HBL = "Habib Bank";
  static void greetmsg({required String name, required String bankName}) {
    print("Welcome $name at the $bankName");
  }
}

void main(List<String> args) {
  // no need of instance because our values are static
  print(bank.HBL);
  bank.greetmsg(name: "Usman", bankName: bank.UBL);
}
