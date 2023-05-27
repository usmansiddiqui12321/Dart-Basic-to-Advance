void main(List<String> args) {
  List<String> lst1 = ["khr", "lhr", "isl"]; // List One
  List<String> lst2 = ["qut", "psh", "rwl"]; // List Two
  List<String> lst3 = [
    ...lst2,
    ...lst1
  ]; // ... is Spread Operator to add two Lists
  print(lst3);
  Map<String, String> map_one = {
    "Name": "Usman",
    "Age": "23",
  };
  Map<String, String> map_two = {"Firstname": "Ali", "brithday": "20", ...map_one};
  print(map_two);
}
