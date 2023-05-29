import 'dart:io';

void main() {
  // Create a list of numbers.
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  // Loop through the list.
  for (int number in numbers) {
    // Check if the number is even.
    if (number % 2 == 0) {
      // Print the number.
      print(number);
    } else {
      // Print the number and an exclamation mark.
      print(number.toString() + '!');
    }
  }

  // Create a variable to store the user's input.
  String input = '';

  // Loop until the user enters a valid number.
  while (input != 'q') {
    // Ask the user to enter a number.
    print('Enter a number (q to quit): ');

    // Get the user's input.
    String? input = stdin.readLineSync();

    // Check if the user entered a valid number.
    if (input == 'q') {
      // Break out of the loop.
      break;
    } else {
      // Check if the number is even.
      if (int.parse(input!) % 2 == 0) {
        // Print the number.
        print('The number is even.');
      } else {
        // Print the number and an exclamation mark.
        print('The number is odd.');
      }
    }
  }
}
