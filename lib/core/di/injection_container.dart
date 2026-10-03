import 'package:get_it/get_it.dart';

import '../../features/items/data/datasources/item_remote_data_source.dart';
import '../../features/items/data/repositories/item_repository_impl.dart';
import '../../features/items/domain/repositories/item_repository.dart';
import '../../features/items/domain/usecases/get_items_usecase.dart';
import '../../features/items/presentation/cubit/item_cubit.dart';

final GetIt sl = GetIt.instance;

void setupLocator() {
  // Cubit
  sl.registerFactory(() => ItemCubit(getItemsUseCase: sl()));

  // Use case
  sl.registerLazySingleton(() => GetItemsUseCase(sl()));

  // Repository
  sl.registerLazySingleton<ItemRepository>(
    () => ItemRepositoryImpl(remoteDataSource: sl()),
  );

  // Data Sources
  sl.registerLazySingleton<ItemRemoteDataSource>(
    () => ItemRemoteDataSourceImpl(),
  );
}
