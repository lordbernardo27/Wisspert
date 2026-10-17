import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app/app.dart';
import 'core/config/app_config.dart';
import 'core/errors/global_error_handler.dart';
import 'core/services/app_providers.dart';

void main() {
  GlobalErrorHandler.initialize();

  const environment = AppConfig.environment;

  runApp(
    ProviderScope(
      overrides: [
        appEnvironmentProvider.overrideWithValue(environment),
      ],
      child: const WisspertApp(),
    ),
  );
}
