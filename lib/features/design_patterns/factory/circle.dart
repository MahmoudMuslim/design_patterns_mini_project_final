// ignore_for_file: avoid_print
import 'shape.dart';

/// Concrete Circle class implementing Shape.
class Circle implements Shape {
  @override
  void revealMe() {
    print('you chose to print circle');
  }

  String getMessage() => 'you chose to print circle';
}
