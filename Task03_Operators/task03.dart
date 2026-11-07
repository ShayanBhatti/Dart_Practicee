double calculateTotal({
  required double price,
  required int quantity,
  required double discountPercent,
  required double taxPercent,
}) {
  if (price < 0) throw ArgumentError('price cannot be negative');
  if (quantity < 0) throw ArgumentError('quantity cannot be negative');
  if (discountPercent < 0 || discountPercent > 100) {
    throw ArgumentError('discountPercent must be in [0, 100]');
  }
  if (taxPercent < 0) throw ArgumentError('taxPercent cannot be negative');

  final subtotal = price * quantity;
  final discountAmount = subtotal * discountPercent / 100;
  final afterDiscount = subtotal - discountAmount;
  final taxAmount = afterDiscount * taxPercent / 100;
  return afterDiscount + taxAmount;
}

/// Returns true if the first total is greater than the second.
bool isGreaterTotal(double a, double b) => a > b;

void main() {
  // ---------- Normal ----------
  final t1 = calculateTotal(
    price: 250.50,
    quantity: 3,
    discountPercent: 10,
    taxPercent: 5,
  );
  print('Normal (price=250.50, qty=3, disc=10%, tax=5%):');
  print('  Total = \$${t1.toStringAsFixed(2)}');

  // Compare two totals (Boolean result)
  final t2 = calculateTotal(
    price: 250.50,
    quantity: 2,
    discountPercent: 10,
    taxPercent: 5,
  );
  print('  qty=3 total > qty=2 total ? ${isGreaterTotal(t1, t2)}');

  // ---------- Boundary: zero quantity ----------
  final tZero = calculateTotal(
    price: 100,
    quantity: 0,
    discountPercent: 10,
    taxPercent: 5,
  );
  print('\nZero quantity total = \$${tZero.toStringAsFixed(2)}');

  // Guard denominator: price per unit when quantity == 0
  final qty = 0;
  if (qty > 0) {
    print('  Price per unit = \$${(100 / qty).toStringAsFixed(2)}');
  } else {
    print('  Price per unit = N/A (denominator is zero)');
  }

  // ---------- Fractional price ----------
  final tFrac = calculateTotal(
    price: 99.99,
    quantity: 2,
    discountPercent: 0,
    taxPercent: 0,
  );
  print('\nFractional price total = \$${tFrac.toStringAsFixed(2)}');

  // ---------- Error: negative input ----------
  try {
    calculateTotal(
      price: -10,
      quantity: 1,
      discountPercent: 0,
      taxPercent: 0,
    );
  } on ArgumentError catch (e) {
    print('\nCaught expected error: ${e.message}');
  }

  try {
    calculateTotal(
      price: 100,
      quantity: 1,
      discountPercent: 150,
      taxPercent: 0,
    );
  } on ArgumentError catch (e) {
    print('Caught expected error: ${e.message}');
  }
}