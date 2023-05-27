// enum daysoftheWeek {
//   sunday,
//   monday,
//   tuesday,
//   wednesday,
//   thursday,
//   friday,
//   saturday
// }

// void main(List<String> args) {
//   daysoftheWeek today = daysoftheWeek.sunday;
//   if (today == daysoftheWeek.sunday) {
//     print('Holiday');
//   } else {
//     print('Not Holiday');
//   }
// }

enum Greetfor { morning, afternoon, evening, night }

enum Title { mr, miss }

void main(List<String> args) {
  Greetfor greet = Greetfor.afternoon;
  Title title = Title.mr;
  String name = 'Muhammad Usman';
  String message = '';

  switch (greet) {
    case Greetfor.afternoon:
      message = 'Good afternoon';
      break;
    case Greetfor.morning:
      message = 'Good morining';
      break;
    case Greetfor.evening:
      message = 'Good evening';
      break;
    case Greetfor.night:
      message = 'Good Night';
      break;
  }
  switch (title) {
    case Title.mr:
      message += ' Mr ${name}';
      break;

    case Title.miss:
      message += ' Miss ${name}';
      break;
  }
  print(message);
}
