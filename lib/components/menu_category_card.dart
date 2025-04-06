import 'package:flutter/material.dart';
import '../models/MenuCategory.dart';
import '../shared/styles.dart';

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
    return Container(
      decoration: BoxDecoration(
        color: buttonBeige,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.1),
            blurRadius: 10,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: Material(
        color: transparentColor,
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: () {
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
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 30,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: SizedBox(
                    height: 50,
                    width: 50,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Image.asset(icon),
                    ),
                  ),
                ),
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        category.name ?? 'Item',
                        style: poppinsFont40ptSemibold(),
                      ),
                      if (category.description != null &&
                          category.description!.isNotEmpty)
                        const SizedBox(height: 6),
                      Text(
                        category.description ?? '',
                        style: poppinsFont16pt(),
                        softWrap: true,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
