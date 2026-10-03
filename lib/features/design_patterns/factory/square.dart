// ignore_for_file: avoid_print
import 'shape.dart';

/// Concrete Square class implementing Shape.
class Square implements Shape {
  @override
  void revealMe() {
    print('you chose to print square');
  }

  String getMessage() => 'you chose to print square';
}
