import 'package:flutter/material.dart';
import 'package:gyo/models/Item.dart';
import 'package:gyo/pages/item_page.dart';
import 'package:gyo/shared/styles.dart';

class MenuItemCard extends StatelessWidget {
  final Item item;
  final String icon;
  const MenuItemCard({
    super.key,
    required this.item,
    required this.icon,
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
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 40),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 40,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: SizedBox(
                height: 70,
                width: 70,
                child: Image.asset(icon),
              ),
            ),
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 5,
                children: [
                  Text(
                    item.name ?? 'Item',
                    style: poppinsFont30ptSemibold(),
                  ),
                  if (item.price != null) ...[
                    Text(
                      '\$${item.price}',
                      style: poppinsFont16ptSemibold(),
                    ),
                  ],
                  if (item.description != null && item.description!.isNotEmpty)
                    Text(
                      item.description ?? '',
                      style: poppinsFont16pt(),
                      softWrap: true,
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
