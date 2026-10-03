// ignore_for_file: type=lint
import '../../domain/entities/item_entity.dart';

/// Data Model representing an item from remote/local data sources.
class ItemModel extends ItemEntity {
  const ItemModel({
    required super.id,
    required super.title,
    required super.description,
    required super.price,
  });

  factory ItemModel.fromJson(Map<String, dynamic> json) {
    return ItemModel(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'price': price,
    };
  }
}
