
String buildIdCard({
  required String name,
  required String department,
  required String semester,
  required String email,
}) {
  final trimmedName = name.trim();
  final trimmedDept = department.trim();
  final trimmedSem = semester.trim();
  final trimmedEmail = email.trim();

  if (trimmedName.isEmpty ||
      trimmedDept.isEmpty ||
      trimmedSem.isEmpty ||
      trimmedEmail.isEmpty) {
    throw ArgumentError('All fields are required and cannot be blank');
  }
  if (!trimmedEmail.contains('@')) {
    throw ArgumentError('Email must contain "@"');
  }

  return '''
========== STUDENT ID CARD ==========
Name        : ${trimmedName.toUpperCase()}
Department  : $trimmedDept
Semester    : $trimmedSem
Email       : ${trimmedEmail.toLowerCase()}
Name length : ${trimmedName.length} characters
=====================================
''';
}

void main() {
  // ---------- Normal ----------
  print(buildIdCard(
    name: '   Ayesha Siddiqui   ',
    department: 'Computer Science',
    semester: 'Fall 2026',
    email: 'AYESHA@EXAMPLE.COM',
  ));

  // ---------- Boundary: whitespace-only field ----------
  try {
    buildIdCard(
      name: '    ',
      department: 'CS',
      semester: 'Fall 2026',
      email: 'a@b.com',
    );
  } on ArgumentError catch (e) {
    print('Boundary case -> caught: ${e.message}');
  }

  // ---------- Error: missing '@' ----------
  try {
    buildIdCard(
      name: 'Sara Khan',
      department: 'CS',
      semester: 'Fall 2026',
      email: 'not-an-email',
    );
  } on ArgumentError catch (e) {
    print('Error case   -> caught: ${e.message}');
  }
}