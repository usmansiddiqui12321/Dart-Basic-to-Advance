//lexical Scoping => Range of a variable
// Matlab ik variable jab kisi function k under bana va h
//tw uski range khn tk ki h
//srif wo function usy use kr skta ya us k bahir bhi use kr skty
//Nested Function can use every variable in used in upper nested functions


String toplevel = "This is Top Level Variable";
void main(List<String> args) {
  String insideMain = "This Variable is Defined In Main Function";

  void myfunction() {
    String insideFunction = "This Variable is Defined Inside Function";

    void nestedFunction() {
      String insideNestedFunction =
          "This Variable is Defined Inside Nested Function";
      print(toplevel);
      print(insideMain);
      print(insideFunction);
      print(insideNestedFunction);
    }

    print(insideFunction);
    print(insideMain);
    print(toplevel);

    nestedFunction();
  }

  print(insideMain);
  print(toplevel);

  myfunction();
}
