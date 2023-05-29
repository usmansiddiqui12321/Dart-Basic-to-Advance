import 'dart:io';
import 'dart:math';

Future<int> randomInt() {
  return Future.delayed(Duration(seconds: 1), () => Random().nextInt(20) + 1);
}

void main(List<String> args) async {
  try {
    print("Download Starting");
    int totlasum = 0;
    stdout.write('[');
    while (totlasum < 100) {
      final ranint = await randomInt();
      stdout.write("*" * ranint);
      totlasum += ranint;
    }
    print(']');
    print("Downloading Completed");
  } catch (e) {}
}
