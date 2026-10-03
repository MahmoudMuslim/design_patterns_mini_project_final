// ignore_for_file: avoid_print
import 'shape.dart';

/// Concrete Rectangle class implementing Shape.
class Rectangle implements Shape {
  @override
  void revealMe() {
    print('you chose to print rectangle');
  }

  String getMessage() => 'you chose to print rectangle';
}
