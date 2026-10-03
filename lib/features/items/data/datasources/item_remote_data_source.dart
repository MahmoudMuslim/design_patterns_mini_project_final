import '../models/item_model.dart';

/// Remote Data Source simulating API data fetching for items.
abstract class ItemRemoteDataSource {
  Future<List<ItemModel>> fetchItems();
}

class ItemRemoteDataSourceImpl implements ItemRemoteDataSource {
  @override
  Future<List<ItemModel>> fetchItems() async {
    // Simulate network delay
    await Future.delayed(const Duration(milliseconds: 800));

    // Simulated items data
    final List<Map<String, dynamic>> mockData = [
      {
        'id': '1',
        'title': 'Flutter Clean Architecture Guide',
        'description':
            'Comprehensive handbook for building scalable Flutter apps.',
        'price': 29.99,
      },
      {
        'id': '2',
        'title': 'Design Patterns in Dart',
        'description':
            'Master Creational, Structural, and Behavioral patterns.',
        'price': 39.99,
      },
      {
        'id': '3',
        'title': 'BLoC State Management Masterclass',
        'description': 'Advanced reactive state management with flutter_bloc.',
        'price': 24.99,
      },
      {
        'id': '4',
        'title': 'SOLID Principles Handbook',
        'description':
            'Write robust, maintainable, and extensible object-oriented code.',
        'price': 19.99,
      },
      {
        'id': '5',
        'title': 'Dependency Injection with GetIt',
        'description':
            'Decouple services and repositories cleanly in Dart & Flutter.',
        'price': 14.99,
      },
    ];

    return mockData.map((json) => ItemModel.fromJson(json)).toList();
  }
}
