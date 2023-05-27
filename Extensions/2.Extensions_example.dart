extension sumFunctionality on Iterable<num> {
  num sum() => reduce((value, element) => value + element);
}
void main(List<String> args) {
  List<num> mylist = [1,2,3,4,5.56];
  print(mylist.sum());
}
