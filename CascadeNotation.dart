class Student {
  final int id;
  final String name;
  String? course;
  String? shift;

  Student({
    required this.id,
    required this.name,
  });

  @override
  String toString() {
    return 'id: ${id}, name: $name, course: $course, shift: $shift';
  }
}

void main(List<String> args) {
  // final student1 = Student(id: 1, name: "Ali");
  // student1.course = "Dart";
  // student1.shift = "Night"; // In 3 lines ko asy bhi likh skty hn
  final student1 = Student(id: 1, name: "Ali")
    ..course = "Dart"
    ..shift = "Night";
  print(student1);
}
