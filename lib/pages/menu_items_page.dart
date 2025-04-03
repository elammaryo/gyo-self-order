import 'package:flutter/material.dart';
import 'package:gyo/components/kiosk_app_bar.dart';
import 'package:gyo/components/menu_item_card.dart';
import 'package:gyo/components/pay_now_button.dart';
import 'package:gyo/shared/styles.dart';

import '../models/Item.dart';

class MenuItemsPage extends StatelessWidget {
  final List<Item> itemList;
  final String icon;
  const MenuItemsPage({super.key, required this.itemList, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: PayNowButton(),
      appBar: KioskAppBar(),
      body: Container(
        decoration: BoxDecoration(gradient: orangeGradient),
        child: SafeArea(
          child: GridView.builder(
            padding: const EdgeInsets.all(20),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2.5,
              crossAxisSpacing: 0,
              mainAxisSpacing: 20,
            ),
            itemBuilder: (context, index) => MenuItemCard(
              item: itemList[index],
              icon: icon,
            ),
            itemCount: itemList.length,
          ),
        ),
      ),
    );
  }
}
