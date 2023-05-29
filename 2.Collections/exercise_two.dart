void main(List<String> args) {
  final Map<String, dynamic> allclasses = {
    "schoolname": "cityschool",
    "morningshift": ["maths", "english", "science"],
    "aftershift": ["arts", "science"],
    "fee": 10000
  };
  print("School name is ${allclasses["schoolname"]}");
  print("Fee for school is ${allclasses["fee"]}");
  print("Morning shift's first class ${allclasses["morningshift"][0]}");
  print("After shift's second class ${allclasses["aftershift"][1]}");
  final Map<String, dynamic> scores = {
    "science": {"amir": 40, "fazal": 50, "ali": 70},
    "maths": {"amir": 78, "fazal": 54, "ali": 80},
    "english": {"amir": 98, "fazal": 87, "ali": 43},
    
  };
  print("${scores["science"]["ali"]}");
  // print("${scores[]}");
  // print("${scores[]}");
  // print("${scores[]}");

}
