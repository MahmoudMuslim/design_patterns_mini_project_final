/// Responsible solely for receipt generation (Single Responsibility Principle - SRP).
class ReceiptGenerator {
  String generateReceipt(double amount, String paymentType) {
    return '--- RECEIPT ---\n'
        'Type: $paymentType\n'
        'Amount: \$${amount.toStringAsFixed(2)}\n'
        'Date: ${DateTime.now().toLocal()}\n'
        'Status: SUCCESS\n'
        '----------------';
  }
}
