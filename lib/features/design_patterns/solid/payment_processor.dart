/// Abstract Payment Processor interface demonstrating Open/Closed Principle (OCP)
/// and Interface Segregation Principle (ISP).
abstract class PaymentProcessor {
  bool processPayment(double amount);
}
