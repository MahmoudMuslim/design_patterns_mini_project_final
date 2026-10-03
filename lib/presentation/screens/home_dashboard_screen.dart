import 'package:flutter/material.dart';

import '../../features/design_patterns/builder/builder_client.dart';
import '../../features/design_patterns/factory/factory_client.dart';
import '../../features/design_patterns/singleton/singleton_client.dart';
import '../../features/design_patterns/solid/solid_client.dart';
import '../../features/items/presentation/screens/item_list_screen.dart';
import '../widgets/demo_result_dialog.dart';

/// Main Dashboard Screen showcasing all phases of the Flutter Design Patterns & Clean Architecture project.
class HomeDashboardScreen extends StatelessWidget {
  const HomeDashboardScreen({super.key});

  void _showDemo(BuildContext context, String title, String output) {
    showDialog(
      context: context,
      builder: (context) => DemoResultDialog(title: title, content: output),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Design Patterns & Clean Architecture'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Text(
            'Flutter Design Patterns & Clean Architecture Mini Project',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          _buildPhaseCard(
            context,
            title: 'Phase 1: Builder Design Pattern',
            subtitle:
                'User Class creation with flexible attributes & validation',
            icon: Icons.person_add,
            onTap: () {
              String result = BuilderClient.runDemo();
              _showDemo(context, 'Phase 1: Builder Pattern Output', result);
            },
          ),
          _buildPhaseCard(
            context,
            title: 'Phase 2: Factory Design Pattern',
            subtitle: 'Shape Factory (Circle, Square, Rectangle)',
            icon: Icons.category,
            onTap: () {
              String result = FactoryClient.runDemo();
              _showDemo(context, 'Phase 2: Factory Pattern Output', result);
            },
          ),
          _buildPhaseCard(
            context,
            title: 'Phase 3: Singleton Design Pattern',
            subtitle: 'Database instance uniqueness confirmation',
            icon: Icons.storage,
            onTap: () {
              String result = SingletonClient.runDemo();
              _showDemo(context, 'Phase 3: Singleton Pattern Output', result);
            },
          ),
          _buildPhaseCard(
            context,
            title: 'Phase 4: SOLID Principles',
            subtitle: 'Simple Payment System (Cash & Credit)',
            icon: Icons.payment,
            onTap: () {
              String result = SolidClient.runDemo();
              _showDemo(
                context,
                'Phase 4: SOLID Payment System Output',
                result,
              );
            },
          ),
          _buildPhaseCard(
            context,
            title: 'Phase 5: Clean Architecture + BLoC + DI',
            subtitle:
                'Data, Domain, Presentation layers with GetIt & flutter_bloc',
            icon: Icons.architecture,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ItemListScreen()),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildPhaseCard(
    BuildContext context, {
    required String title,
    required String subtitle,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        leading: CircleAvatar(
          backgroundColor: Colors.deepPurple.shade100,
          child: Icon(icon, color: Colors.deepPurple),
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 6.0),
          child: Text(subtitle, style: TextStyle(color: Colors.grey[600])),
        ),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: onTap,
      ),
    );
  }
}
