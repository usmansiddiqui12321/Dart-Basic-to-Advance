void main(List<String> args) async {
  final stream = Stream.fromIterable([5, 4, 3, 2, 1]);
  final sum = await sumStream(stream);
  print(sum);
}

Future<int> sumStream(Stream<int> stream) async {
  int sum = 0;
  await for (int val in stream) {
    await Future.delayed(Duration(seconds: 2));
    print(val);
    sum += val;
  }

  return sum;
}
