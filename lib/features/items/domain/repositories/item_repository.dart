import '../entities/item_entity.dart';

/// Abstract Domain Repository contract for items.
abstract class ItemRepository {
  Future<List<ItemEntity>> getItems();
}
