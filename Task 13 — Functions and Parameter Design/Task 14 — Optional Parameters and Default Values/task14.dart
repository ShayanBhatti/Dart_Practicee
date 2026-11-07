
void printReceipt(
  String itemName,
  double price, {
  int quantity = 1,
  double discount = 0,
}) {
  double subtotal = price * quantity;
  double discountAmount = subtotal * discount / 100;
  double finalTotal = subtotal - discountAmount;

  print('\n========== RECEIPT ==========');
  print('Item Name: $itemName');
  print('Price: ${price.toStringAsFixed(2)}');
  print('Quantity: $quantity');
  print('Subtotal: ${subtotal.toStringAsFixed(2)}');
  print('Discount: ${discount.toStringAsFixed(2)}%');
  print('Discount Amount: ${discountAmount.toStringAsFixed(2)}');
  print('Final Total: ${finalTotal.toStringAsFixed(2)}');
  print('=============================');
}

void main() {
  print('===== RECEIPT FORMATTER =====');

  // Default parameter call.
  print('\n--- DEFAULT RECEIPT ---');
  printReceipt('Keyboard', 2500);

  // Customized parameter call.
  print('\n--- CUSTOMIZED RECEIPT ---');
  printReceipt(
    'Mouse',
    1500,
    quantity: 2,
    discount: 10,
  );
}
