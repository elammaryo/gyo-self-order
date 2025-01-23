import 'package:flutter/material.dart';
import 'package:gyo/components/kiosk_app_bar.dart';
import 'package:gyo/components/menu_item_card.dart';
import 'package:gyo/components/pay_now_button.dart';

import '../models/Item.dart';

class MenuItemsPage extends StatelessWidget {
  final List<Item> itemList;
  const MenuItemsPage({super.key, required this.itemList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[300],
      bottomNavigationBar: PayNowButton(),
      appBar: KioskAppBar(),
      body: SafeArea(
        child: GridView.builder(
          padding: const EdgeInsets.all(20),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3,
            crossAxisSpacing: 20,
            mainAxisSpacing: 40,
          ),
          itemBuilder: (context, index) => MenuItemCard(item: itemList[index]),
          itemCount: itemList.length,
        ),
      ),
    );
  }
}
