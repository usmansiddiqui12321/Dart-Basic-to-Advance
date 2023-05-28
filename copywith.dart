class Student {
  final int id;
  final String name;
  String course;
  String shift;

  Student(
      {required this.id,
      required this.name,
      required this.course,
      required this.shift});

  @override
  String toString() {
    return 'id: ${id}, name: $name, course: $course, shift: $shift';
  }

  Student copyWith(
      {required int id, required String name, String? course, String? shift}) {
    return Student(
      id: id,
      name: name,
      course: course ?? this.course,
      shift: shift ?? this.shift,
    );
  }
}

void main(List<String> args) {
  final student1 = Student(id: 1, name: "Mani", course: "Dart", shift: "Night");
  final student2 = student1.copyWith(id: 2, name: "Ali");
  final student3 = student1.copyWith(id: 3, name: "jia");
  final student4 = student1.copyWith(id: 4, name: "zainab");
  final student5 = student1.copyWith(id: 5, name: "farah" , shift: "Morning");
print(student1);
print(student2);
print(student3);
print(student4);
print(student5);
}
