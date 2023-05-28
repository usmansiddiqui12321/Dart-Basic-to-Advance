// no intializer
// no super

abstract class Person {
  Person({required this.name});
  String name;
  void getDetails();
  factory Person.fromJson({required Map<String, Object> json}) {
    final salary = json['salary'];
    final type = json['type'];
    final fee = json['fee'];
    final name = json['name'];
    final obj;
    switch (type) {
      case 'trainer':
        if (salary != null) {
          obj = Trainer(name: name, salary: salary as int);
          break;
        }
        throw UnimplementedError('Salary not Provided');
      case 'student':
        if (fee != null) {
          obj = Student(name: name, fees: fee as int);
          break;
        }
        throw UnimplementedError('Salary not Provided');
      default:
        throw UnimplementedError("Invalid Type");
    }
    return obj;
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
  final trainerone = Person.fromJson(
      json: {'name': 'Amir', "salary": 1000, "type": "trainer"});
  final studentone =
      Person.fromJson(json: {'name': 'Ali', "fee": 500, "type": "student"});
  trainerone.getDetails();
  studentone.getDetails();
}
