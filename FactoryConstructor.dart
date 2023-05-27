abstract class Person {
  Person({required this.name});
  String name;
  void getDetails();
}

class Trainer extends Person {
  Trainer({required name, required this.salary}) : super(name: name);
  int salary;

  @override
  void getDetails() => print("Trainer name is $name and Salary is $salary");
}
class Student extends Person{
  Student({required name, required this.fees}) : super (name: name);
  int fees;
  
  @override
  void getDetails() => print("Student name is $name and Fees is : $fees");

}