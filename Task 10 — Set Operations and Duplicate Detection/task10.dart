
import 'dart:collection';
import 'dart:io';

void main() {
  // Original list containing repeated course codes.
  List<String> courses = [
    'CS101',
    'IT202',
    'CS101',
    'SE303',
    'IT202',
    'AI404',
    'CS101',
    'IT202'
  ];

  print('===== SET OPERATIONS =====');

  print('\nOriginal Course List:');
  print(courses);

  // Create a LinkedHashSet to remove duplicates.
  Set<String> uniqueCourses = LinkedHashSet<String>();

  for (String course in courses) {
    uniqueCourses.add(course);
  }

  print('\nUnique Course Codes:');
  print(uniqueCourses);

  // Count occurrences of each course.
  Map<String, int> frequency = {};

  for (String course in courses) {
    frequency[course] = (frequency[course] ?? 0) + 1;
  }

  print('\n--- DUPLICATE INFORMATION ---');

  int duplicateCount = 0;

  frequency.forEach((course, count) {
    print('$course appears $count time(s)');

    if (count > 1) {
      duplicateCount += count - 1;
    }
  });

  print('\nTotal course entries: ${courses.length}');
  print('Unique course entries: ${uniqueCourses.length}');
  print('Duplicate occurrences: $duplicateCount');

  // Membership checking.
  print('\n--- MEMBERSHIP CHECK ---');

  stdout.write('Enter a course code to search: ');
  String search = stdin.readLineSync() ?? '';

  if (uniqueCourses.contains(search)) {
    print('$search exists in the course set.');
  } else {
    print('$search does not exist in the course set.');
  }

  // Compare insertion order.
  print('\n--- INSERTION ORDER COMPARISON ---');
  print('Original List: $courses');
  print('LinkedHashSet: $uniqueCourses');

  print('\nLinkedHashSet preserves insertion order.');
  print('Repeated values are stored only once.');
}
