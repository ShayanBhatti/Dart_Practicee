
import 'dart:io';

void main() {
  stdout.write('Enter sequence length (N): ');
  int? n = int.tryParse(stdin.readLineSync() ?? '');

  if (n == null || n < 0) {
    print('Error: Please enter a non-negative integer.');
    return;
  }

  // FOR LOOP
  int forSum = 0;
  int forCount = 0;

  print('\n--- FOR LOOP ---');
  for (int i = 1; i <= n; i++) {
    stdout.write('$i ');
    forSum += i;
    forCount++;
  }

  print('\nSum: $forSum');
  print('Iterations: $forCount');

  // WHILE LOOP
  int whileSum = 0;
  int whileCount = 0;
  int j = 1;

  print('\n--- WHILE LOOP ---');
  while (j <= n) {
    stdout.write('$j ');
    whileSum += j;
    whileCount++;
    j++;
  }

  print('\nSum: $whileSum');
  print('Iterations: $whileCount');

  // DO-WHILE LOOP
  int doSum = 0;
  int doCount = 0;
  int k = 1;

  print('\n--- DO-WHILE LOOP ---');

  if (n > 0) {
    do {
      stdout.write('$k ');
      doSum += k;
      doCount++;
      k++;
    } while (k <= n);
  }

  print('\nSum: $doSum');
  print('Iterations: $doCount');
}
