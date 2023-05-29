import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  int score = 0;
  while (true) {
    stdout.write('Please Enter your Guess 1 to 5: ');
    final  userinput = stdin.readLineSync();

    int random_num = Random().nextInt(5) + 1;

    if (userinput == null || userinput.isEmpty) {
      print('Please Enter Input from 1 to 5');
      continue;
    } else if (userinput.toLowerCase() == 'exit') {
      print('Thank you for Playing, your score is :');
      break;
    } else if (int.parse(userinput) == random_num) {
      score++;
      print('You Win, Your Current Score is now ${score}');
    } else {
      print(
          'Try again!\nYour input was ${userinput} and system number was ${random_num}');
    }
  }
}