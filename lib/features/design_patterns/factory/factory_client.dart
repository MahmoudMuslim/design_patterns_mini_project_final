import 'shape_factory.dart';
import 'shape.dart';
import 'circle.dart';
import 'rectangle.dart';
import 'square.dart';

/// Client class demonstrating Phase 2: Factory Design Pattern.
class FactoryClient {
  static String runDemo() {
    final StringBuffer output = StringBuffer();
    output.writeln('=== Phase 2: Factory Design Pattern ===');

    final ShapeFactory shapeFactory = ShapeFactory();

    // Testing Circle
    Shape shape1 = shapeFactory.getShape('circle');
    shape1.revealMe();
    output.writeln((shape1 as Circle).getMessage());

    // Testing Square
    Shape shape2 = shapeFactory.getShape('square');
    shape2.revealMe();
    output.writeln((shape2 as Square).getMessage());

    // Testing Rectangle
    Shape shape3 = shapeFactory.getShape('rectangle');
    shape3.revealMe();
    output.writeln((shape3 as Rectangle).getMessage());

    return output.toString();
  }
}
