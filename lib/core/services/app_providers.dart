import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../config/app_config.dart';

final appEnvironmentProvider = Provider<AppEnvironment>(
  (ref) => AppConfig.environment,
);
