import 'cash_payment.dart';
import 'credit_payment.dart';
import 'payment_service.dart';
import 'receipt_generator.dart';

/// Client class demonstrating Phase 4: SOLID Principles Payment System.
class SolidClient {
  static String runDemo() {
    final StringBuffer output = StringBuffer();
    output.writeln('=== Phase 4: SOLID Principles Payment System ===');

    final ReceiptGenerator receiptGenerator = ReceiptGenerator();

    // 1. Cash Payment via DIP & LSP
    output.writeln('--- Cash Payment Demo ---');
    PaymentService cashService = PaymentService(
      CashPayment(),
      receiptGenerator,
    );
    String cashResult = cashService.executePayment(150.0, 'Cash');
    output.writeln(cashResult);

    output.writeln('');

    // 2. Credit Card Payment via DIP & LSP
    output.writeln('--- Credit Card Payment Demo ---');
    PaymentService creditService = PaymentService(
      CreditPayment(),
      receiptGenerator,
    );
    String creditResult = creditService.executePayment(350.0, 'Credit Card');
    output.writeln(creditResult);

    return output.toString();
  }
}
