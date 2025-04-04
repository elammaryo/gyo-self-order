import 'package:flutter/material.dart';
import 'package:gyo/components/kiosk_app_bar.dart';
import 'package:gyo/components/pay_now_button.dart';
import 'package:gyo/components/side_bar.dart';
import 'package:gyo/models/Item.dart';
import 'package:gyo/models/ItemSize.dart';
import 'package:gyo/models/enums/sizes.dart';
import 'package:gyo/shared/helper.dart';
import 'package:gyo/shared/styles.dart';

class ItemPage extends StatefulWidget {
  final Item item;
  final String icon;
  const ItemPage({
    super.key,
    required this.item,
    required this.icon,
  });

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  Sizes selectedSize = Sizes.small;
  @override
  Widget build(BuildContext context) {
    final Item item = widget.item;
    return Scaffold(
      appBar: KioskAppBar(),
      bottomNavigationBar: PayNowButton(),
      body: Container(
        decoration: BoxDecoration(gradient: orangeGradient),
        child: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SideBar(),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      spacing: 15,
                      children: [
                        // image
                        SizedBox(
                          width: 200,
                          height: 200,
                          child: Image.asset(widget.icon),
                        ),
                        // item name
                        Text(
                          item.name ?? 'Item',
                          style: poppinsFont20ptSemibold(
                              color: Color.fromRGBO(33, 33, 33, 1)),
                        ),
                        // item description
                        Text(
                          item.description ?? '',
                          style: poppinsFont12pt(),
                        ),
                        // item price
                        Text('\$${item.price ?? 'N/A'}'),
                        // sizes (if applicable)
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            spacing: 8,
                            children: [
                              for (final ItemSize size in item.sizes ?? []) ...[
                                TextButton(
                                  style: TextButton.styleFrom(
                                    backgroundColor: selectedSize == size.size
                                        ? Color.fromRGBO(60, 60, 60, 1)
                                        : whiteColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      selectedSize = size.size ?? Sizes.small;
                                    });
                                  },
                                  child: SizedBox(
                                    width: 70,
                                    child: Center(
                                        child: Text(
                                      size.size!.name.capitalize(),
                                      style: poppinsFont12pt(
                                          color: selectedSize == size.size
                                              ? whiteColor
                                              : blackColor),
                                    )),
                                  ),
                                )
                              ],
                            ],
                          ),
                        ),
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
                                        '\$${item.toppings?[index].price ?? 'N/A'}',
                                        style: poppinsFont20ptSemibold(),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          // TODO(): subtract counter from toppings map
                                          // initialize a <toppings, int> toppings map on this page
                                          // need to be able to remove toppings, need to adjust json for that
                                        },
                                        child: Icon(Icons.remove),
                                      ),
                                      Divider(
                                        height: 40,
                                        thickness: 3,
                                      ),
                                      TextButton(
                                        onPressed: () {},
                                        child: Icon(Icons.add),
                                      ),
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
              ),
            ],
          ),
        ),
      ),
    );
  }

  selectSize() {}
}
