import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecases/get_items_usecase.dart';
import 'item_state.dart';

/// Cubit managing state for items presentation layer.
class ItemCubit extends Cubit<ItemState> {
  final GetItemsUseCase getItemsUseCase;

  ItemCubit({required this.getItemsUseCase}) : super(const ItemInitial());

  Future<void> fetchItems() async {
    emit(const ItemLoading());
    try {
      final items = await getItemsUseCase();
      emit(ItemLoaded(items));
    } catch (e) {
      emit(ItemError(e.toString()));
    }
  }
}
