import 'package:flutter/material.dart';
import '../Item.dart';

class OrderProvider extends ChangeNotifier {
  List<Item> _orderItems = [];
  List<Item> get orderItems => _orderItems;

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
