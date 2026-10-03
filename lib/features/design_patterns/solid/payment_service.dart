import 'payment_processor.dart';
import 'receipt_generator.dart';

/// High-level payment service demonstrating Dependency Inversion Principle (DIP)
/// by depending on abstraction ([PaymentProcessor]) rather than concrete payment classes.
class PaymentService {
  final PaymentProcessor _paymentProcessor;
  final ReceiptGenerator _receiptGenerator;

  PaymentService(this._paymentProcessor, this._receiptGenerator);

  String executePayment(double amount, String paymentTypeName) {
    bool success = _paymentProcessor.processPayment(amount);
    if (success) {
      return _receiptGenerator.generateReceipt(amount, paymentTypeName);
    } else {
      return 'Payment failed for \$${amount.toStringAsFixed(2)}';
    }
  }
}
