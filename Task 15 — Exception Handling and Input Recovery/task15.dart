
import 'dart:io';

void main() {
  bool validInput = false;

  while (!validInput) {
    try {
      stdout.write('Enter first number: ');
      String input1 = stdin.readLineSync() ?? '';

      stdout.write('Enter second number: ');
      String input2 = stdin.readLineSync() ?? '';

      // Convert text into numbers.
      int a = int.parse(input1);
      int b = int.parse(input2);

      // Deliberately invalid arithmetic operation test.
      if (b == 0) {
        int result = a ~/ b;
        print('Result: $result');
      } else {
        int result = a ~/ b;
        print('Division Result: $result');
      }

      validInput = true;
    } on FormatException catch (e) {
      print('Error: Please enter valid numeric values.');
      print('Exception Type: ${e.runtimeType}');
      print('Recovery: Please try again.\n');
    } on IntegerDivisionByZeroException catch (e) {
      print('Error: Division by zero is not allowed.');
      print('Exception Type: ${e.runtimeType}');
      print('Recovery: Please enter a non-zero second number.\n');
    } catch (e) {
      print('Unexpected error: $e');
      print('Please try again.\n');
    }
  }

  print('\nProgram completed successfully.');
}
