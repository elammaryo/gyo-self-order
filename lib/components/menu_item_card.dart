import 'package:flutter/material.dart';
import 'package:gyo/models/Item.dart';
import 'package:gyo/pages/item_page.dart';
import 'package:gyo/shared/styles.dart';

class MenuItemCard extends StatelessWidget {
  final Item item;
  const MenuItemCard({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          surfaceTintColor: transparentColor, shape: RoundedRectangleBorder()),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ItemPage(item: item),
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
            item.name ?? 'Item',
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
