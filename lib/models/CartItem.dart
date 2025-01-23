import 'package:gyo/models/enums/sizes.dart';

class CartItem {
  final String? id;
  final String? name;
  final double? price;
  final Sizes? size;
  final int? quantity;

  CartItem({
    this.id,
    this.name,
    this.price,
    this.size,
    this.quantity,
  });

  CartItem copyWith({
    String? id,
    String? name,
    double? price,
    Sizes? size,
    int? quantity,
  }) {
    return CartItem(
      id: id ?? this.id,
      name: name ?? this.name,
      price: price ?? this.price,
      size: size ?? this.size,
      quantity: quantity ?? this.quantity,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'size': size,
      'quantity': quantity,
    };
  }

  factory CartItem.fromJson(Map<String, dynamic> json) {
    return CartItem(
      id: json['id'],
      name: json['name'],
      price: json['price'],
      size: json['size'],
      quantity: json['quantity'],
    );
  }

  @override
  String toString() {
    return 'CartItem(id: $id, name: $name, price: $price, size: $size, quantity: $quantity)';
  }
}
