class Person {
  String? id;
  String? name;
  greet() {
    print('Hello $name');
  }
}

class Student extends Person {
  int? fee;
  @override
  greet() {
    // TODO: implement greet
    return super.greet();
  }
}

class Teacher extends Student {
  int? salary;
}

void main(List<String> args) {
  Student student = Student();
  student.name = "Muhammad Usman Siddiqui";
  student.fee = 10000;
  student.greet();
  Teacher teacher_one = Teacher();
teacher_one.id = "2" ; 
teacher_one.salary=50000;
teacher_one.name = "aqib";
teacher_one.greet();
}
