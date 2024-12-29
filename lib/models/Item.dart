import 'package:gyo/models/AdditionalToppings.dart';
import 'package:gyo/models/ItemSize.dart';

class Item {
  int? id;
  String? name;
  String? image;
  String? description;
  String? price;
  String? category;
  List<ItemSize>? sizes = [];
  List<Additionaltoppings>? toppings = [];

  Item({
    this.id,
    this.name,
    this.image,
    this.description,
    this.price,
    this.category,
    this.sizes,
    this.toppings,
  });

  Item.fromJson(final Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    description = json['description'];
    price = json['price'];
    category = json['category'];
    if (json['sizes'] != null) {
      sizes = (json['sizes'] as List<dynamic>)
          .map((final dynamic sizeJson) => ItemSize.fromJson(sizeJson))
          .toList();
    } else {
      sizes = [];
    }
    if (json['additionalToppings'] != null) {
      toppings = (json['additionalToppings'] as List<dynamic>)
          .map((final dynamic toppingsJson) =>
              Additionaltoppings.fromJson(toppingsJson))
          .toList();
    } else {
      toppings = [];
    }
  }
}
