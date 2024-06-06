import 'package:flutter/foundation.dart';

class DebugDev {
  static void log(Object message) {
    if (kDebugMode) {
      print(message);
    }
  }
}

class console {
  static void log(Object message) {
    if (kDebugMode) {
      print(message);
    }
  }
}
