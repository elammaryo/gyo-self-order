import 'package:flutter/material.dart';
import 'package:gyo/models/enums/dining_setting.dart';
import '../Item.dart';

class OrderProvider extends ChangeNotifier {
  final List<Item> _orderItems = [];
  DiningSetting? _diningSetting;

  List<Item> get orderItems => _orderItems;
  DiningSetting? get diningSetting => _diningSetting;

  void setDiningSetting(DiningSetting? setting) {
    _diningSetting = setting;
    notifyListeners();
  }

  void addOrderItem(final Item orderItem) {
    _orderItems.add(orderItem);
    notifyListeners();
  }

  void removeOrderItem(final Item orderItem) {
    _orderItems.remove(orderItem);
    notifyListeners();
  }

  void clearOrderItems() {
    _orderItems.clear();
    notifyListeners();
  }
}
