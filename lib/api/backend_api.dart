import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:gyo/models/MenuCategory.dart';

class BackendAPI {
  static Future<List<MenuCategory>> getMenuCategories() async {
    final String jsonData =
        await rootBundle.loadString('assets/jsonFiles/foodCategories.json');

    final List<dynamic> tagObjsJson = jsonDecode(jsonData);

    return tagObjsJson
        .map((final dynamic tagJson) => MenuCategory.fromJson(tagJson))
        .toList();
  }
}
