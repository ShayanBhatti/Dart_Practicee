
void main() {
  // Map containing student registration numbers as keys.
  Map<String, Map<String, dynamic>> students = {
    'BS101': {'name': 'Ali', 'cgpa': 3.5},
    'BS102': {'name': 'Ahmed', 'cgpa': 3.2},
    'BS103': {'name': 'Sara', 'cgpa': 3.8},
    'BS104': {'name': 'Ayesha', 'cgpa': 3.6},
  };

  print('===== STUDENT RECORD MANAGEMENT =====');

  // Display all student records.
  print('\n--- ALL STUDENT RECORDS ---');

  students.forEach((regNo, details) {
    print('Registration: $regNo');
    print('Name: ${details['name']}');
    print('CGPA: ${details['cgpa']}');
    print('----------------------');
  });

  // Search for an existing record.
  String searchId = 'BS102';

  print('\n--- SEARCH EXISTING STUDENT ---');

  if (students.containsKey(searchId)) {
    print('Student Found: ${students[searchId]}');
  } else {
    print('Student not found.');
  }

  // Search for a missing record.
  String missingId = 'BS999';

  print('\n--- SEARCH MISSING STUDENT ---');

  if (students.containsKey(missingId)) {
    print('Student Found: ${students[missingId]}');
  } else {
    print('Student $missingId not found.');
  }

  // Update an existing student record.
  print('\n--- UPDATE STUDENT RECORD ---');

  students['BS102'] = {
    'name': 'Ahmed Khan',
    'cgpa': 3.7
  };

  print('Updated Record: ${students['BS102']}');

  // Demonstrate duplicate key behavior.
  print('\n--- DUPLICATE KEY TEST ---');

  students['BS101'] = {
    'name': 'Ali Updated',
    'cgpa': 3.9
  };

  print('BS101 after duplicate key insertion:');
  print(students['BS101']);
  print('Total records: ${students.length}');
}
