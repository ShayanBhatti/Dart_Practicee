
String gradeFor(num score) {
  if (score < 0 || score > 100) {
    throw ArgumentError('Score must be between 0 and 100, got $score');
  }
  if (score >= 90) return 'A+';
  if (score >= 80) return 'A';
  if (score >= 70) return 'B';
  if (score >= 60) return 'C';
  if (score >= 50) return 'D';
  return 'F';
}

void main() {
  // ---------- Boundary sweep ----------
  final boundaryScores = <int>[100, 90, 89, 80, 79, 70, 69, 60, 59, 50, 49, 0];
  print('--- Boundary cases ---');
  for (final s in boundaryScores) {
    print('Score $s -> ${gradeFor(s)}');
  }

  // ---------- Normal ----------
  print('\n--- Normal case ---');
  print('Score 74 -> ${gradeFor(74)}');

  // ---------- Error: out of range ----------
  print('\n--- Invalid inputs ---');
  for (final bad in <num>[-1, 101, 100.5]) {
    try {
      gradeFor(bad);
    } on ArgumentError catch (e) {
      print('Rejected $bad : ${e.message}');
    }
  }
}