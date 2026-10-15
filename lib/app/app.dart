import 'package:flutter/material.dart';
import '../features/your_world/presentation/your_world_page.dart';

class WisspertApp extends StatelessWidget {
  const WisspertApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisspert',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      home: const YourWorldPage(),
    );
  }
}
