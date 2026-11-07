
void main() {
  List<int> scores = [78, 92, 65, 88, 92, 70];

  List<String> names = [
    'Shayan',
    'Ahmed',
    'Sara',
    'Ali',
    'Maryam'
  ];

  print('===== SORTING AND COMPARISON =====');

  print('\nOriginal Scores: $scores');

  // Ascending order.
  List<int> ascending = List.from(scores);
  ascending.sort();

  print('\nScores in Ascending Order:');
  print(ascending);

  // Descending order.
  List<int> descending = List.from(scores);
  descending.sort((a, b) => b.compareTo(a));

  print('\nScores in Descending Order:');
  print(descending);

  // Sort names alphabetically.
  List<String> sortedNames = List.from(names);
  sortedNames.sort((a, b) => a.compareTo(b));

  print('\nNames in Alphabetical Order:');
  print(sortedNames);

  // Demonstrate tie handling.
  print('\n--- TIE COMPARISON ---');

  List<int> tiedScores = [90, 80, 90, 70, 80];
  tiedScores.sort();

  print('Scores with Ties: $tiedScores');

  print('\nOriginal Scores Remain Unchanged:');
  print(scores);
}
