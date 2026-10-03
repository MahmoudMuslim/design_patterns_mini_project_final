import '../../domain/entities/item_entity.dart';

/// States for [ItemCubit].
abstract class ItemState {
  const ItemState();
}

class ItemInitial extends ItemState {
  const ItemInitial();
}

class ItemLoading extends ItemState {
  const ItemLoading();
}

class ItemLoaded extends ItemState {
  final List<ItemEntity> items;
  const ItemLoaded(this.items);
}

class ItemError extends ItemState {
  final String message;
  const ItemError(this.message);
}
