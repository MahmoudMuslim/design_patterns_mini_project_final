import 'user_builder.dart';
import 'user.dart';

/// Client class demonstrating Phase 1: Builder Design Pattern.
class BuilderClient {
  static String runDemo() {
    final StringBuffer output = StringBuffer();
    output.writeln('=== Phase 1: Builder Design Pattern ===');

    // Creating a User with partial data (First Name, Last Name, and Age, omitting phone)
    User user = UserBuilder()
        .setFirstName('Mahmoud')
        .setLastName('Elmougy')
        .setAge(25)
        .build();

    output.writeln('Created User with partial data:');
    output.writeln(user.toString());

    return output.toString();
  }
}
