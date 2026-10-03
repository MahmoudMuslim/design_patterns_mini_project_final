import 'database.dart';

/// Client class demonstrating Phase 3: Singleton Design Pattern.
class SingletonClient {
  static String runDemo() {
    final StringBuffer output = StringBuffer();
    output.writeln('=== Phase 3: Singleton Design Pattern ===');

    // Calling createDatabase() twice
    Database db1 = Database.createDatabase();
    Database db2 = Database.createDatabase();

    output.writeln('Database instance 1 hash: ${db1.hashCode}');
    output.writeln('Database instance 2 hash: ${db2.hashCode}');

    // Checking whether both returned instances are equal
    bool areInstancesEqual = identical(db1, db2);
    output.writeln('Are both database instances equal? $areInstancesEqual');

    if (areInstancesEqual) {
      output.writeln('Singleton pattern successfully confirmed!');
    } else {
      output.writeln('Singleton pattern failed!');
    }

    return output.toString();
  }
}
