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
                builder: (context) => ItemPage(item: item, icon: icon),
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 40),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: SizedBox(
                    height: 70,
                    width: 70,
                    child: Image.asset(icon),
                  ),
                ),
                const SizedBox(width: 40),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                      if (item.description != null &&
                          item.description!.isNotEmpty)
                        Text(
                          item.description!,
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
