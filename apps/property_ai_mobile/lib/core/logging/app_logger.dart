import 'dart:developer';

class AppLogger {
  AppLogger._();

  static void info(String message) {
    log(
      message,
      name: 'INFO',
    );
  }

  static void error(
    String message, [
    Object? error,
  ]) {
    log(
      message,
      name: 'ERROR',
      error: error,
    );
  }
}