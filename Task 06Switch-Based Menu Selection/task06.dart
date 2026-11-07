
import 'dart:io';

void main() {
  bool running = true;

  while (running) {
    print('\n===== UTILITY MENU =====');
    print('1. Addition');
    print('2. Subtraction');
    print('3. Multiplication');
    print('4. Exit');

    stdout.write('Enter your choice: ');
    int? choice = int.tryParse(stdin.readLineSync() ?? '');

    switch (choice) {
      case 1:
        stdout.write('Enter first number: ');
        double? a = double.tryParse(stdin.readLineSync() ?? '');

        stdout.write('Enter second number: ');
        double? b = double.tryParse(stdin.readLineSync() ?? '');

        if (a != null && b != null) {
          print('Result: ${a + b}');
        } else {
          print('Invalid number entered.');
        }
        break;

      case 2:
        stdout.write('Enter first number: ');
        double? x = double.tryParse(stdin.readLineSync() ?? '');

        stdout.write('Enter second number: ');
        double? y = double.tryParse(stdin.readLineSync() ?? '');

        if (x != null && y != null) {
          print('Result: ${x - y}');
        } else {
          print('Invalid number entered.');
        }
        break;

      case 3:
        stdout.write('Enter first number: ');
        double? m = double.tryParse(stdin.readLineSync() ?? '');

        stdout.write('Enter second number: ');
        double? n = double.tryParse(stdin.readLineSync() ?? '');

        if (m != null && n != null) {
          print('Result: ${m * n}');
        } else {
          print('Invalid number entered.');
        }
        break;

      case 4:
        print('Exiting program. Goodbye!');
        running = false;
        break;

      default:
        print('Invalid menu selection. Please choose 1-4.');
    }
  }
}
