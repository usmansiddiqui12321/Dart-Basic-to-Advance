import 'dart:math';

void main(List<String> args) {
  int yournumber = rolltheDice("Your Number");
  int systemnumber = rolltheDice("System Number");
  showtheresult(yournumber, systemnumber);
}

int rolltheDice(String title) {
  int randomnumber = Random().nextInt(6) + 1;
  print("${title} ${randomnumber}");
  return randomnumber;
}

void showtheresult(int yournumber, systemnumber) {
  if (yournumber == systemnumber) {
    print("its a tie");
  } else if (yournumber > systemnumber) {
    print("you win");
  } else {
    print("you losts");
  }
}
