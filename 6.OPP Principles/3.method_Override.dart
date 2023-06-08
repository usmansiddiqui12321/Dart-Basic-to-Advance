
//Polymorphism == Method Override
class Person {
  String? id;
  String? name;
  Person({required this.name, required this.id});
  //Main Goal is to Make Greet Function for Every class
  greet() {
    print('Hello $name');
  }
}

class Student extends Person {
  Student({required name, required id, required this.fee})
      : super(id: id, name: name);

  int fee;
  @override
  greet() {
    print('Hello $name , your Student id is $id and Your Fee is $fee');
  }
}

class Teacher extends Student {
  Teacher({required name, required id, required this.salary, required fee})
      : super(id: id, name: name, fee: fee);

  int salary;
  @override
  greet() {
    print('Hello $name , your Student id is $id and Your salary is $salary');
  }
}

void main(List<String> args) {
  Person person = Person(name: "ALi", id: "500");
  person.greet();
  Student student =
      Student(id: "4", name: "Muhammad Usman Siddiqui", fee: 1000);
  student.greet();
  Teacher teacher_one =
      Teacher(id: "5", name: "Aqib", fee: 5000, salary: 10000);
  teacher_one.greet();
}
