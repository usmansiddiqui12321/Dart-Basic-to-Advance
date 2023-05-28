// no intializer
// no super

abstract class Person {
  Person({required this.name});
  String name;
  void getDetails();
  factory Person.fromwhichperson(
      {required typename, required name, fee, salary}) {
    if (typename.toString().toLowerCase() == 'trainer' && salary != null)
      return Trainer(name: name, salary: salary);
    else if (typename.toString().toLowerCase() == "student" && fee != null)
      return Student(name: name, fees: fee);
    throw UnimplementedError(
        'Invalid Type Name ,Either fee or salary is missing ');
  }
}

class Trainer extends Person {
  Trainer({required name, required this.salary}) : super(name: name);
  int salary;

  @override
  void getDetails() => print("Trainer name is $name and Salary is $salary");
}

class Student extends Person {
  Student({required name, required this.fees}) : super(name: name);
  int fees;

  @override
  void getDetails() => print("Student name is $name and Fees is : $fees");
}

void main(List<String> args) {
  final trainerA =
      Person.fromwhichperson(typename: "trainer", name: "Ahmed", salary: 10000);
  final studentA =
      Person.fromwhichperson(typename: "student", name: "Ali", fee: 2000);
  trainerA.getDetails();
  studentA.getDetails();
print(trainerA);
print(studentA);
}
