import 'package:flutter/foundation.dart';

class DebugDev {
  static void log(Object message) {
    if (kDebugMode) {
      print(message);
    }
  }
}

// ignore: camel_case_types
class console {
  static void log(Object message) {
    if (kDebugMode) {
      print(message);
    }
  }
}
