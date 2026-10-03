// ignore_for_file: avoid_print
import 'payment_processor.dart';

/// Concrete Credit Card Payment implementation demonstrating Liskov Substitution Principle (LSP).
class CreditPayment implements PaymentProcessor {
  @override
  bool processPayment(double amount) {
    print('Processing credit card payment of \$${amount.toStringAsFixed(2)}');
    return true;
  }
}
