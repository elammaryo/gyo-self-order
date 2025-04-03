import 'package:flutter/material.dart';
import 'package:gyo/models/MenuCategory.dart';
import 'package:gyo/shared/styles.dart';

import '../pages/menu_items_page.dart';

class MenuCategoryCard extends StatelessWidget {
  final MenuCategory category;
  final String icon;
  const MenuCategoryCard({
    super.key,
    required this.category,
    required this.icon,
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
            builder: (context) => MenuItemsPage(
              itemList: category.items ?? [],
              icon: icon,
            ),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: buttonBeige,
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.1),
              blurRadius: 10,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Row(
          spacing: 50,
          children: [
            SizedBox(
              height: 70,
              width: 70,
              child: Image.asset(icon),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  category.name ?? 'Item',
                  style: poppinsFont40ptSemibold(),
                ),
                if (category.description != null &&
                    category.description!.isNotEmpty)
                  Text(
                    category.description ?? '',
                    style: poppinsFont20ptSemibold(),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
