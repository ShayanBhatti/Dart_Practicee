
import 'dart:io';

// Student model
class Student {
  String name;
  List<double> marks;

  Student(this.name, this.marks);
}

// Calculate total marks
double calculateTotal(List<double> marks) {
  double total = 0;

  for (double mark in marks) {
    total += mark;
  }

  return total;
}

// Calculate average marks
double calculateAverage(List<double> marks) {
  if (marks.isEmpty) return 0;

  return calculateTotal(marks) / marks.length;
}

// Assign grade
String calculateGrade(double average) {
  if (average >= 80) return 'A';
  if (average >= 70) return 'B';
  if (average >= 60) return 'C';
  if (average >= 50) return 'D';
  return 'F';
}

// Read non-empty text
String readText(String message) {
  while (true) {
    stdout.write(message);
    String value = stdin.readLineSync() ?? '';

    if (value.trim().isNotEmpty) {
      return value.trim();
    }

    print('Input cannot be empty.');
  }
}

// Read valid number
double readMark(String message) {
  while (true) {
    stdout.write(message);

    double? value = double.tryParse(
      stdin.readLineSync() ?? ''
    );

    if (value != null && value >= 0 && value <= 100) {
      return value;
    }

    print('Invalid marks! Enter a value between 0 and 100.');
  }
}

// Read marks for multiple subjects
List<double> readMarks() {
  int subjectCount = 0;

  while (subjectCount <= 0) {
    stdout.write('Enter number of subjects: ');

    subjectCount = int.tryParse(
      stdin.readLineSync() ?? ''
    ) ?? 0;

    if (subjectCount <= 0) {
      print('Enter at least one subject.');
    }
  }

  List<double> marks = [];

  for (int i = 0; i < subjectCount; i++) {
    marks.add(readMark('Enter marks for subject ${i + 1}: '));
  }

  return marks;
}

// Display individual student
void displayStudent(String id, Student student) {
  double total = calculateTotal(student.marks);
  double average = calculateAverage(student.marks);

  print('\nRegistration Number: $id');
  print('Student Name: ${student.name}');
  print('Subject Marks: ${student.marks}');
  print('Total Marks: ${total.toStringAsFixed(2)}');
  print('Average: ${average.toStringAsFixed(2)}');
  print('Grade: ${calculateGrade(average)}');
  print('Result: ${average >= 50 ? 'PASS' : 'FAIL'}');
  print('----------------------------');
}

// Add student
void addStudent(Map<String, Student> records) {
  print('\n--- ADD STUDENT ---');

  String id = readText('Enter registration number: ');

  if (records.containsKey(id)) {
    print('Error: Registration number already exists.');
    return;
  }

  String name = readText('Enter student name: ');
  List<double> marks = readMarks();

  records[id] = Student(name, marks);

  print('Student record added successfully.');
}

// Display all students
void displayAll(Map<String, Student> records) {
  print('\n--- ALL STUDENT RECORDS ---');

  if (records.isEmpty) {
    print('No student records available.');
    return;
  }

  records.forEach((id, student) {
    displayStudent(id, student);
  });
}

// Find student
void findStudent(Map<String, Student> records) {
  print('\n--- SEARCH STUDENT ---');

  String id = readText('Enter registration number: ');

  Student? student = records[id];

  if (student == null) {
    print('Student record not found.');
    return;
  }

  displayStudent(id, student);
}

// Update student
void updateStudent(Map<String, Student> records) {
  print('\n--- UPDATE STUDENT ---');

  String id = readText('Enter registration number: ');

  Student? student = records[id];

  if (student == null) {
    print('Student record not found.');
    return;
  }

  print('Current Name: ${student.name}');

  student.name = readText('Enter new student name: ');
  student.marks = readMarks();

  print('Student record updated successfully.');
}

// Delete student
void deleteStudent(Map<String, Student> records) {
  print('\n--- DELETE STUDENT ---');

  String id = readText('Enter registration number: ');

  if (records.remove(id) != null) {
    print('Student record deleted successfully.');
  } else {
    print('Student record not found.');
  }
}

// Academic report
void academicReport(Map<String, Student> records) {
  print('\n--- ACADEMIC REPORT ---');

  if (records.isEmpty) {
    print('No records available for reporting.');
    return;
  }

  Student? highest;
  Student? lowest;

  int passCount = 0;
  int failCount = 0;

  for (Student student in records.values) {
    double average = calculateAverage(student.marks);

    if (average >= 50) {
      passCount++;
    } else {
      failCount++;
    }

    if (highest == null ||
        average > calculateAverage(highest.marks)) {
      highest = student;
    }

    if (lowest == null ||
        average < calculateAverage(lowest.marks)) {
      lowest = student;
    }
  }

  print('Total Students: ${records.length}');
  print('Passed Students: $passCount');
  print('Failed Students: $failCount');

  if (highest != null) {
    print(
      'Highest Average: '
      '${calculateAverage(highest.marks).toStringAsFixed(2)}'
    );
    print('Top Student: ${highest.name}');
  }

  if (lowest != null) {
    print(
      'Lowest Average: '
      '${calculateAverage(lowest.marks).toStringAsFixed(2)}'
    );
    print('Lowest Student: ${lowest.name}');
  }
}

// Main menu
void main() {
  Map<String, Student> records = {};

  bool running = true;

  while (running) {
    print('\n================================');
    print(' UNIVERSITY ACADEMIC RECORD SYSTEM');
    print('================================');
    print('1. Add Student');
    print('2. Display All Students');
    print('3. Search Student');
    print('4. Update Student');
    print('5. Delete Student');
    print('6. Academic Report');
    print('7. Exit');
    print('================================');

    stdout.write('Enter your choice: ');

    int? choice = int.tryParse(
      stdin.readLineSync() ?? ''
    );

    switch (choice) {
      case 1:
        addStudent(records);
        break;

      case 2:
        displayAll(records);
        break;

      case 3:
        findStudent(records);
        break;

      case 4:
        updateStudent(records);
        break;

      case 5:
        deleteStudent(records);
        break;

      case 6:
        academicReport(records);
        break;

      case 7:
        print('Exiting Academic Record System. Goodbye!');
        running = false;
        break;

      default:
        print('Invalid choice. Please select 1-7.');
    }
  }
}
