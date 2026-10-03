import 'package:flutter/material.dart';

import '../../domain/entities/item_entity.dart';

/// Widget displaying a single item card in the list view.
class ItemCardWidget extends StatelessWidget {
  final ItemEntity item;

  const ItemCardWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        leading: CircleAvatar(
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
          child: Text(item.id),
        ),
        title: Text(
          item.title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            item.description,
            style: TextStyle(color: Colors.grey[700], fontSize: 14),
          ),
        ),
        trailing: Text(
          '\$${item.price.toStringAsFixed(2)}',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.green,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
