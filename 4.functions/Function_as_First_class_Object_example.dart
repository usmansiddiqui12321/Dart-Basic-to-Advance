typedef MessageFunction = String Function(String);
void main(List<String> args) {
  //Creating Anonymous Function
  final getmsg = (String name) {
    return "Hello ${name}";
  };
  //One more Anonymous Function which is accepting above Anonymous function
  final printmsg = (String Function(String) greetings, String name) {
    String messageRecieved = greetings(name);
    print(messageRecieved);
  };
  printmsg(getmsg, "Muahmmad Usman Siddiqui");
  //String Function(String) greetings bura lag rha
  //is liye Define krengy uper hi
  //typedef MessageFunction = String Function(String) at the Top
  final detailmsg = (MessageFunction greetings, String name) {
    String messageRecieved = greetings(name);
    print(messageRecieved);
  };
  detailmsg(getmsg, "hi");
}
