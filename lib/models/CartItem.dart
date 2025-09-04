import 'package:gyo/models/AdditionalToppings.dart';
import 'package:gyo/models/enums/sizes.dart';

class CartItem {
  final String? id;
  final String? name;
  final String? price;
  final Sizes? size;
  final int? quantity;
  final List<Additionaltoppings>? toppings;

  CartItem({
    this.id,
    this.name,
    this.price,
    this.size,
    this.quantity,
    this.toppings,
  });

  CartItem copyWith({
    String? id,
    String? name,
    String? price,
    Sizes? size,
    int? quantity,
    List<Additionaltoppings>? toppings,
  }) {
    return CartItem(
      id: id ?? this.id,
      name: name ?? this.name,
      price: price ?? this.price,
      size: size ?? this.size,
      quantity: quantity ?? this.quantity,
      toppings: toppings ?? this.toppings,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'size': size,
      'quantity': quantity,
      'toppings': toppings,
    };
  }

  factory CartItem.fromJson(Map<String, dynamic> json) {
    return CartItem(
      id: json['id'],
      name: json['name'],
      price: json['price'],
      size: json['size'],
      quantity: json['quantity'],
      toppings: json['toppings'],
    );
  }

  @override
  String toString() {
    return 'CartItem(id: $id, name: $name, price: $price, size: $size, quantity: $quantity)';
  }
}
