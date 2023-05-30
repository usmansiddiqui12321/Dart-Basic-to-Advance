class Person {
  String? id;
  String? name;
  Person({required this.name, required this.id});
  //Yahan Required 2 chezen hn name or id
  //tw jo jo isko extend kry ga
  //usy Super lga kr isi ko extend krna pryga

  greet() {
    print('Hello $name');
  }
}

class Student extends Person {
  Student({required name, required id, required this.fee})
      : super(id: id, name: name);

  int fee;
}

class Teacher extends Student {
  Teacher({required name, required id, required this.salary, required fee})
      : super(id: id, name: name, fee: fee);

  int salary;
}

void main(List<String> args) {
  Student student =
      Student(id: "4", name: "Muhammad Usman Siddiqui", fee: 1000);
  student.fee = 10000;
  student.greet();
  Teacher teacher_one =
      Teacher(id: "5", name: "Aqib", fee: 5000, salary: 10000);
  teacher_one.salary = 50000;
  teacher_one.greet();
}
