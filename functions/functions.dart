void main(List<String> args) {
  printname();
  printuser("Usman");
  printuserInfo("mani");
}

void printname() {
  print("Muhammad Usman"); //Multiple line function
  print("Muhammad Usman");
}

//single Line Function
void printuser(String name) => print("UserName : ${name}");
//Mention arguments which can be Null
void printuserInfo(String name, [int? age = 0, double? marks]) {
  print("UserName : ${name},\nage : ${age},\nmarks : ${marks}\n");
}
// In printuserInfo we used [] because we wanted to mention
// arguments which can be null and this is the correct way to do that 
