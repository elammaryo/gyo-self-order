class Additionaltoppings {
  String? name;
  String? price;
  bool? isSelected;

  Additionaltoppings({
    this.name,
    this.price,
    this.isSelected,
  });

  Additionaltoppings.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    price = json['price'];
    isSelected = json['isSelected'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['price'] = price;
    data['isSelected'] = isSelected;
    return data;
  }
}
