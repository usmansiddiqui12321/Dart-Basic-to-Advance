void main(List<String> args) {

  int salary = 10000;
  int? bonus ;
  //print(salary + bonus); // error ayga q k hmny null check nhi lgaya va
  if (bonus != null) {
    print(bonus + salary);
  } else {
    print(salary);
  }
}
