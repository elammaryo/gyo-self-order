import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gyo/components/side_bar.dart';
import 'package:gyo/models/Item.dart';

class ItemPage extends StatefulWidget {
  final Item item;
  const ItemPage({super.key, required this.item});

  @override
  _ItemPageState createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  @override
  Widget build(BuildContext context) {
    final Item item = widget.item;
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            SideBar(),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: SingleChildScrollView(
                child: Column(
                  spacing: 15,
                  children: [
                    // image
                    SvgPicture.asset(''),
                    // item name
                    Text(item.name ?? 'Item'),
                    // item description
                    Text(item.description ?? ''),
                    // item price
                    Text('\$${item.price ?? 'N/A'}'),
                    // sizes (if applicable)
                    Text(item.sizes.toString()),
                    // additional toppings (if applicable)
                    SizedBox(
                      height: 200,
                      child: ListView.builder(
                          itemCount: item.toppings?.length ?? 0,
                          itemBuilder: (context, index) {
                            return Container(
                              padding: const EdgeInsets.all(8),
                              child: Row(
                                spacing: 8,
                                children: [
                                  Text(item.toppings?[index].name ?? 'N/A'),
                                  Text(
                                      '\$${item.toppings?[index].price ?? 'N/A'}'),
                                  TextButton(
                                      onPressed: () {
                                        // TODO(): subtract counter from toppings map
                                        // initialize a <toppings, int> toppings map on this page
                                        // need to be able to remove toppings, need to adjust json for that
                                      },
                                      child: Icon(Icons.remove)),
                                  Divider(
                                    height: 40,
                                    thickness: 3,
                                  ),
                                  TextButton(
                                      onPressed: () {}, child: Icon(Icons.add)),
                                ],
                              ),
                            );
                          }),
                    ),
                    // quantity selector
                    // notes field?
                    // add to cart button
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
