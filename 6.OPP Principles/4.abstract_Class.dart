//Declaration Of a Class so that we can define this in other Class
abstract class Person {
  String? id;
  String? name;
  Person({required this.name, required this.id});
  void greet();
  String
      getname(); // jo class is Class ko extend kry gi tw usy ye Functions Create krna zruri h
}

class Student extends Person {
  Student({required name, required id, required this.fee})
      : super(id: id, name: name);

  int fee;
  @override
  greet() {
    print('Hello $name , your Student id is $id and Your Fee is $fee');
  }

  @override
  String getname() {
    // Yahan Hamny Method bana Dia warna Error ata
    return "Student Name:${name.toString()}";
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

  @override
  String getname() {
    // TODO: implement getname
    return "Prof.Name:${name.toString()}";

  }
}

void main(List<String> args) {
// Person person = Person(name: "ALi", id: "500"); //Abstract classes Can not be instantiated
// person.greet();
  Student student =
      Student(id: "4", name: "Muhammad Usman Siddiqui", fee: 1000);
  student.greet();
  Teacher teacher_one =
      Teacher(id: "5", name: "Aqib", fee: 5000, salary: 10000);
  teacher_one.greet();
  print(student.getname());
  print(teacher_one.getname());
}
