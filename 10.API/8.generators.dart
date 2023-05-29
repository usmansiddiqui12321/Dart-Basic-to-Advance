//Generators are different from normal Stream iterables

Iterable<int> generateSyncList({required int value}) sync* {
  for (int i = value; i > 0; i--) {
    yield i;
  }
}

Stream<int> generateAyncList({required int value}) async* {
  for (int i = value; i > 0; i--) {
    await Future.delayed(Duration(seconds: 2));
    print(i);
    yield i;
  }
}

void main(List<String> args) async{
  final newListwithsync = generateSyncList(value: 5);
  print(newListwithsync.toList());
  final newListwithasync = generateAyncList(value: 10);
print(await newListwithasync.toList());
}
