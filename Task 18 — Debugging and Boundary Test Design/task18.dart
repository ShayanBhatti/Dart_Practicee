
void main() {
  print('===== DEBUGGING LAB =====');

  // BUG 1: Off-by-one error.
  print('\n--- BUG 1: OFF-BY-ONE ERROR ---');

  List<int> numbers = [10, 20, 30, 40, 50];

  print('Expected: All 5 elements');
  print('Before Fix:');

  // Incorrect condition: misses the last element.
  for (int i = 0; i < numbers.length - 1; i++) {
    print(numbers[i]);
  }

  print('After Fix:');

  for (int i = 0; i < numbers.length; i++) {
    print(numbers[i]);
  }

  // BUG 2: Null-safety issue.
  print('\n--- BUG 2: NULL SAFETY ---');

  String? studentName = null;

  print('Before Fix: Name may be null.');
  print('After Fix: ${studentName ?? 'Unknown Student'}');

  // BUG 3: Incorrect condition.
  print('\n--- BUG 3: INCORRECT CONDITION ---');

  int marks = 75;

  print('Student Marks: $marks');

  // Incorrect condition.
  if (marks > 100) {
    print('Before Fix: Student Passed');
  } else {
    print('Before Fix: Student Failed');
  }

  // Correct condition.
  if (marks >= 50 && marks <= 100) {
    print('After Fix: Student Passed');
  } else {
    print('After Fix: Student Failed');
  }

  print('\nDebugging completed successfully.');
}
