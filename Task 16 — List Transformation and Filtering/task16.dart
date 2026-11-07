
import 'dart:io';

void main() {
  print('===== PRICE TRANSFORMATION SYSTEM =====');

  stdout.write('Enter number of products: ');
  int? count = int.tryParse(stdin.readLineSync() ?? '');

  if (count == null || count < 0) {
    print('Invalid product count.');
    return;
  }

  List<double> originalPrices = [];

  // Accept product prices.
  for (int i = 0; i < count; i++) {
    stdout.write('Enter price of product ${i + 1}: ');
    double? price = double.tryParse(stdin.readLineSync() ?? '');

    if (price == null || price < 0) {
      print('Invalid price. Please try again.');
      i--;
      continue;
    }

    originalPrices.add(price);
  }

  // Create a transformed collection without modifying original.
  List<double> discountedPrices = originalPrices.map((price) {
    return price * 0.90;
  }).toList();

  print('\n--- ORIGINAL PRICES ---');
  print(originalPrices);

  print('\n--- DISCOUNTED PRICES (10%) ---');
  print(discountedPrices);

  // Accept filtering threshold.
  stdout.write('\nEnter minimum price threshold: ');
  double? threshold = double.tryParse(stdin.readLineSync() ?? '');

  if (threshold == null || threshold < 0) {
    print('Invalid threshold.');
    return;
  }

  // Filter discounted prices greater than or equal to threshold.
  List<double> filteredPrices = discountedPrices
      .where((price) => price >= threshold)
      .toList();

  print('\n--- FILTERED PRICES ---');
  print(filteredPrices);

  print('\nOriginal list remains unchanged:');
  print(originalPrices);

  if (originalPrices.isEmpty) {
    print('\nNo products were entered.');
  }
}
