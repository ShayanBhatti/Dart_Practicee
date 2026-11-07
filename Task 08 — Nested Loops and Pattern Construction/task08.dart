
import 'dart:io';

void main() {
  stdout.write('Enter number of rows: ');
  int? rows = int.tryParse(stdin.readLineSync() ?? '');

  if (rows == null || rows <= 0) {
    print('Error: Please enter a positive integer.');
    return;
  }

  int number = 1;
  int executions = 0;

  print('\n--- NUMBER TRIANGLE ---');

  for (int i = 1; i <= rows; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write('$number ');
      number++;
      executions++;
    }
    print('');
  }

  print('\nTotal inner-loop executions: $executions');

  // Compare the work for two different row counts.
  int doubledRows = rows * 2;

  int firstCount = (rows * (rows + 1)) ~/ 2;
  int secondCount = (doubledRows * (doubledRows + 1)) ~/ 2;

  print('\n--- EXECUTION COMPARISON ---');
  print('Rows: $rows | Inner executions: $firstCount');
  print('Rows: $doubledRows | Inner executions: $secondCount');

  print('\nWhen rows double, inner-loop work increases.');
}
