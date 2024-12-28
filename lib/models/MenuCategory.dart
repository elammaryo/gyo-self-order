import 'package:gyo/models/OrderItem.dart';

class MenuCategory {
  String? name;
  String? image;
  String? description;
  List<OrderItem>? items = [];

  MenuCategory({
    this.name,
    this.image,
    this.description,
    this.items,
  });

  MenuCategory.fromJson(final Map<String, dynamic> json) {
    name = json['name'];
    image = json['image'];
    description = json['description'];
    if (json['foods'] != null) {
      items = [];
      json['foods'].forEach((final dynamic foodJson) {
        items?.add(OrderItem.fromJson(foodJson));
      });
    }
  }
}
