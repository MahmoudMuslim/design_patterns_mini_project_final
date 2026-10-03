import 'user.dart';

/// Builder class for flexible and robust creation of [User] objects.
/// Enforces required fields (First Name and Last Name) during build().
class UserBuilder {
  String? _firstName;
  String? _lastName;
  int? _age;
  String? _phone;

  UserBuilder setFirstName(String firstName) {
    _firstName = firstName;
    return this;
  }

  UserBuilder setLastName(String lastName) {
    _lastName = lastName;
    return this;
  }

  UserBuilder setAge(int age) {
    _age = age;
    return this;
  }

  UserBuilder setPhone(String phone) {
    _phone = phone;
    return this;
  }

  /// Builds and returns a [User] instance.
  /// Throws an [ArgumentError] if required fields are missing.
  User build() {
    if (_firstName == null || _firstName!.trim().isEmpty) {
      throw ArgumentError('First Name is required to build a User.');
    }
    if (_lastName == null || _lastName!.trim().isEmpty) {
      throw ArgumentError('Last Name is required to build a User.');
    }

    return User(
      firstName: _firstName!,
      lastName: _lastName!,
      age: _age,
      phone: _phone,
    );
  }
}
