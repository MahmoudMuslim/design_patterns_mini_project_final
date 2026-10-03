import 'package:flutter/material.dart';

import 'core/di/injection_container.dart';
import 'presentation/screens/home_dashboard_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(const DesignPatternsApp());
}

class DesignPatternsApp extends StatelessWidget {
  const DesignPatternsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Design Patterns & Clean Architecture',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeDashboardScreen(),
    );
  }
}
