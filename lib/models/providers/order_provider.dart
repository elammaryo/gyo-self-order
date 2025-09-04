import 'package:flutter/material.dart';
import 'package:gyo/models/CartItem.dart';
import 'package:gyo/models/enums/dining_setting.dart';
import '../Item.dart';

class OrderProvider extends ChangeNotifier {
  final List<CartItem> _orderItems = [];
  DiningSetting? _diningSetting;

  List<CartItem> get orderItems => _orderItems;
  DiningSetting? get diningSetting => _diningSetting;

  void setDiningSetting(DiningSetting? setting) {
    _diningSetting = setting;
    notifyListeners();
  }

  void addOrderItem(final CartItem orderItem) {
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
