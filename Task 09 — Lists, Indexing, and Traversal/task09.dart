
import 'dart:io';

void main() {
  List<double> marks = [];

  print('===== STUDENT MARKS MANAGEMENT =====');

  // Accept five student marks.
  for (int i = 0; i < 5; i++) {
    stdout.write('Enter marks for student ${i + 1}: ');
    double? mark = double.tryParse(stdin.readLineSync() ?? '');

    if (mark == null || mark < 0 || mark > 100) {
      print('Invalid marks! Enter a value between 0 and 100.');
      i--;
      continue;
    }

    marks.add(mark);
  }

  // Display index and value pairs.
  print('\n--- INDEX AND MARKS ---');

  for (int i = 0; i < marks.length; i++) {
    print('Index $i : ${marks[i]}');
  }

  // Calculate total, minimum and maximum manually.
  double total = 0;
  double minimum = marks[0];
  double maximum = marks[0];

  for (int i = 0; i < marks.length; i++) {
    total += marks[i];

    if (marks[i] < minimum) {
      minimum = marks[i];
    }

    if (marks[i] > maximum) {
      maximum = marks[i];
    }
  }

  double average = total / marks.length;

  print('\n--- RESULT SUMMARY ---');
  print('Total Marks: $total');
  print('Average Marks: ${average.toStringAsFixed(2)}');
  print('Minimum Marks: $minimum');
  print('Maximum Marks: $maximum');

  // Safely handle out-of-range indexing.
  stdout.write('\nEnter an index to access (0-4): ');
  int? index = int.tryParse(stdin.readLineSync() ?? '');

  if (index != null && index >= 0 && index < marks.length) {
    print('Mark at index $index: ${marks[index]}');
  } else {
    print('Error: Index out of range!');
  }
}
