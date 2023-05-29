extension ChoosingUniqueon<T extends Object> on Iterable<T> {
  List<T> unique() => this.toSet().toList();
}

void main(List<String> args) {
  List<int> intList = [1, 2, 3, 4, 4].unique();
  List<double> doubleList = [1.1, 2.2, 3.3, 4.4, 4.4].unique();

  List<String> stringList = ["Ali", "Ali", "hi", "4", "5"].unique();
  print(intList);
  print(doubleList);
  print(stringList);
}
