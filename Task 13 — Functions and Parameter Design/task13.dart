
double calculateTotal(List<int> marks) {
  double total = 0;
 for (int mark in marks) {
    total += mark; }
  return total; }

double calculateAverage(List<int> marks) {
  if (marks.isEmpty) return 0;

  return calculateTotal(marks) / marks.length;
}

int calculatePassCount(List<int> marks, {int passingMarks = 50}) {
  int count = 0;

  for (int mark in marks) {
    if (mark >= passingMarks) {
      count++;
    }  }
return count;}

void displayResults(String title, List<int> marks) {
  print('\n--- $title ---');

  print('Marks: $marks');
  print('Total: ${calculateTotal(marks)}');
  print('Average: ${calculateAverage(marks).toStringAsFixed(2)}');

  print(
    'Pass Count: ${calculatePassCount(marks, passingMarks: 50)}'
  );
}

void main() {
  // First dataset.
  List<int> students1 = [80, 70, 90, 40, 60];

  // Second dataset.
  List<int> students2 = [45, 55, 65, 75, 85];

  displayResults('DATASET 1', students1);
  displayResults('DATASET 2', students2);

  // Demonstrating a different named parameter.
  print('\n--- CUSTOM PASSING MARKS ---');

  print(
    'Pass Count (60 marks): '
    '${calculatePassCount(students1, passingMarks: 60)}'
  );
}
