import 'package:flutter/foundation.dart';

class GlobalErrorHandler {
  const GlobalErrorHandler._();

  static void initialize() {
    FlutterError.onError = (FlutterErrorDetails details) {
      FlutterError.presentError(details);
      _report(
        error: details.exception,
        stackTrace: details.stack,
      );
    };
  }

  static void _report({
    required Object error,
    StackTrace? stackTrace,
  }) {
    if (kDebugMode) {
      debugPrint('Wisspert uncaught Flutter error: $error');

      if (stackTrace != null) {
        debugPrintStack(stackTrace: stackTrace);
      }
    }
  }
}
