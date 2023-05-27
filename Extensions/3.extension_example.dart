extension sumFunctionality<T extends num> on Iterable<T> {
  T sum() => reduce((value, element) => value + element as T);
}

void main(List<String> args) {
  List<int> mylist = [1, 2, 3, 4, 5];
  List<double> mylist2 = [1.5, 2.2, 3.3, 4.7, 5.12];
  int intSum = mylist.sum();
  double doublesum = mylist2.sum();
  print(intSum);
  print(doublesum);

  print(mylist.sum());
}
