import 'package:flutter/material.dart';
import 'package:gyo/models/MenuCategory.dart';
import 'package:gyo/shared/styles.dart';

import '../pages/menu_items_page.dart';

class MenuCategoryCard extends StatelessWidget {
  final MenuCategory category;
  const MenuCategoryCard({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        surfaceTintColor: transparentColor,
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MenuItemsPage(itemList: category.items ?? []),
          ),
        );
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: whiteColor,
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.1),
              blurRadius: 10,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Center(
          child: Text(
            category.name ?? 'Item',
            style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
