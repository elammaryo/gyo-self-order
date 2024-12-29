import 'package:gyo/models/enums/sizes.dart';

class ItemSize {
  int? id;
  Sizes? size;
  String? extraCost;

  ItemSize({
    this.id,
    this.size,
    this.extraCost,
  });

  ItemSize.fromJson(final Map<String, dynamic> json) {
    id = json['id'];
    size = Sizes.values.firstWhere(
        (final Sizes e) => e.toString() == json['size'],
        orElse: () => Sizes.standard);
    extraCost = json['extraCost'];
  }
}
