import 'package:flutter/foundation.dart';
import 'package:quiver/core.dart';

class LoginData {
  final String name;
  final String password;
  final String userName;

  LoginData({
    @required this.name,
    @required this.password,
    this.userName,
  });

  @override
  String toString() {
    return '$runtimeType($name, $password, $userName)';
  }

  bool operator ==(Object other) {
    if (other is LoginData) {
      return name == other.name &&
          password == other.password &&
          userName == other.userName;
    }
    return false;
  }

  int get hashCode => hash3(name, password, userName);
}
