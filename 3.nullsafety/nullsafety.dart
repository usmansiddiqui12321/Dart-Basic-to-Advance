void main(List<String> args) {
  int salary = 10000;
  int? bonus;
  //print(salary + bonus); //! This Will Create error because of NO NULL CHECK
  // ignore: unnecessary_null_comparison
  if (null != bonus) {
    print(bonus + salary);
  } else {
    print(salary);
  }
}
