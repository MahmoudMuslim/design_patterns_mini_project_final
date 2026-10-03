import 'shape.dart';
import 'circle.dart';
import 'rectangle.dart';
import 'square.dart';

/// Factory class for creating Shape objects without specifying their concrete classes.
class ShapeFactory {
  Shape getShape(String shapeType) {
    switch (shapeType.toLowerCase().trim()) {
      case 'circle':
        return Circle();
      case 'rectangle':
        return Rectangle();
      case 'square':
        return Square();
      default:
        throw ArgumentError('Unknown shape type: $shapeType');
    }
  }
}
