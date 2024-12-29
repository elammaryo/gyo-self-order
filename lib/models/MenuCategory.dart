import 'package:gyo/models/Item.dart';

class MenuCategory {
  String? name;
  String? image;
  String? description;
  List<Item>? items = [];

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
      items = (json['foods'] as List<dynamic>)
          .map((final dynamic itemJson) => Item.fromJson(itemJson))
          .toList();
    } else {
      items = [];
    }
  }
}
