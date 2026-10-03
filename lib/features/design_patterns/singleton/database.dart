// ignore_for_file: avoid_print
/// Database class ensuring only one instance is ever created (Singleton Pattern).
class Database {
  // Private static instance variable
  static Database? _instance;

  // Private constructor
  Database._internal() {
    print('Database instance initialized.');
  }

  /// Static method to get or create the single instance of Database.
  static Database createDatabase() {
    _instance ??= Database._internal();
    return _instance!;
  }

  String queryData() {
    return 'Executing database query successfully...';
  }
}
