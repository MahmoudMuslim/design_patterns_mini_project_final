/// Domain Entity representing an item (e.g., product or task) in Clean Architecture.
class ItemEntity {
  final String id;
  final String title;
  final String description;
  final double price;

  const ItemEntity({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
  });
}
