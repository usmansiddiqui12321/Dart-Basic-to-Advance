void main(List<String> args) {
  final Map<String, Map<String, int>> scorecard = {
    "science": {"amir": 40, "fazal": 50, "ali": 70},
    "maths": {"amir": 38, "fazal": 54, "ali": 80},
    "english": {"amir": 98, "fazal": 87, "ali": 43},
  };
  Set<String> uniquename = {};
  scorecard.forEach((suject, subjectscores) {
    // print("In the Subject of ${suject} the ${subjectscores.keys.toString()} ");
    subjectscores.forEach((studentname, studentscore) {
      if (studentscore < 40) {
        uniquename.add(studentname);
      }
    });
  }
  );
  print(uniquename);
}
