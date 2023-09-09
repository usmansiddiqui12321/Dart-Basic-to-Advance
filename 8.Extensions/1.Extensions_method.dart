extension NumberParsing on String {
  int toInt() => int.parse(this);
  double toDouble() => double.parse(this);
}

void main(List<String> args) {
  String valDouble = '10.54';
  String valInt = '1502';
  print(double.parse(valDouble));
  print(int.parse(valInt));
  print(valDouble.toDouble());//made from Extension
  print(valInt.toInt());//made from Extension
}
