import 'package:flutter/material.dart';
import 'package:gyo/models/OrderItem.dart';

class OrderProvider extends ChangeNotifier {
  List<OrderItem> _orderItems = [];
  List<OrderItem> get orderItems => _orderItems;

  void addOrderItem(OrderItem orderItem) {
    _orderItems.add(orderItem);
    notifyListeners();
  }

  void removeOrderItem(OrderItem orderItem) {
    _orderItems.remove(orderItem);
    notifyListeners();
  }

  void clearOrderItems() {
    _orderItems.clear();
    notifyListeners();
  }
}
