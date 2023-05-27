//ik function ny dusry function ko accept kia or usy use kia
//Function as First class Object
void main() {
  final msg = (Function printName) {
    printName();
  };
  msg(() {
    print("My Name Is Usman");
  });
}
//Non anonymous Function 
String printmyname(String name) {
  return "My name is $name";
}

