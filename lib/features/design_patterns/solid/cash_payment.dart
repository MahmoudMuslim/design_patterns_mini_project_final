// ignore_for_file: avoid_print
import 'payment_processor.dart';

/// Concrete Cash Payment implementation demonstrating Liskov Substitution Principle (LSP).
class CashPayment implements PaymentProcessor {
  @override
  bool processPayment(double amount) {
    print('Processing cash payment of \$${amount.toStringAsFixed(2)}');
    return true;
  }
}
