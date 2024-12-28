class OrderItem {
  String? name;
  String? image;
  String? description;
  double? price;
  String? category;

  OrderItem({
    this.name,
    this.image,
    this.description,
    this.price,
    this.category,
  });

  OrderItem.fromJson(final Map<String, dynamic> json) {
    name = json['name'];
    image = json['image'];
    description = json['description'];
    price = json['price'];
    category = json['category'];
  }
}
