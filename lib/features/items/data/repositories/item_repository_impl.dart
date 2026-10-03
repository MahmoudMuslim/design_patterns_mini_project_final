import '../../domain/entities/item_entity.dart';
import '../../domain/repositories/item_repository.dart';
import '../datasources/item_remote_data_source.dart';

/// Implementation of [ItemRepository] in the Data layer.
class ItemRepositoryImpl implements ItemRepository {
  final ItemRemoteDataSource remoteDataSource;

  ItemRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<ItemEntity>> getItems() async {
    final itemModels = await remoteDataSource.fetchItems();
    return itemModels; // ItemModel inherits from ItemEntity
  }
}
