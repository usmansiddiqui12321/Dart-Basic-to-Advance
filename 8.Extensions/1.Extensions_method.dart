extension NumberParsing on String {
  int parseInt() => int.parse(this);
  double parseDouble() => double.parse(this);
}

void main(List<String> args) {
  String valDouble = '10.54';
  String valInt = '1502';
  print(double.parse(valDouble));
  print(int.parse(valInt));
  print(valDouble.parseDouble());//made from Extension
  print(valInt.parseInt());//made from Extension
}
