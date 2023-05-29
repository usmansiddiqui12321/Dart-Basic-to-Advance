Stream<int> generateAyncList({required int value}) async* {
  for (int i = value; i > 0; i--) {
    await Future.delayed(Duration(seconds: 2));
    print('stream value $i');
    yield i;
  }
}

Future<int> sumStreamValues(Stream<int> stream) async {
  int sum = 0;
  await for (int val in stream) {
    await Future.delayed(Duration(seconds: 2));
    print('Received value $val');
    sum += val;
  }
  return sum;
}

void main(List<String> args) async {
  final newListwithasync = generateAyncList(value: 4);
  final sumValue = await sumStreamValues(newListwithasync);
  print('Total sum $sumValue');
}
