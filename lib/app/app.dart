import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/config/app_config.dart';
import '../core/services/app_providers.dart';
import '../features/your_world/presentation/your_world_page.dart';
import '../shared/widgets/global_loading_overlay.dart';

class WisspertApp extends ConsumerWidget {
  const WisspertApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final environment = ref.watch(appEnvironmentProvider);

    return MaterialApp(
      title: 'Wisspert',
      debugShowCheckedModeBanner:
          environment != AppEnvironment.production,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      builder: (context, child) {
        return GlobalLoadingOverlay(
          child: child ?? const SizedBox.shrink(),
        );
      },
      home: const YourWorldPage(),
    );
  }
}
