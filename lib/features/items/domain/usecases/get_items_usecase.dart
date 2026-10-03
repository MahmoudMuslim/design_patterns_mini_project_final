import '../entities/item_entity.dart';
import '../repositories/item_repository.dart';

/// Use case responsible for fetching items from the repository.
class GetItemsUseCase {
  final ItemRepository repository;

  GetItemsUseCase(this.repository);

  Future<List<ItemEntity>> call() async {
    return await repository.getItems();
  }
}
