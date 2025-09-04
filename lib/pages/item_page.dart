import 'package:flutter/material.dart';
import 'package:gyo/components/kiosk_app_bar.dart';
import 'package:gyo/components/pay_now_button.dart';
import 'package:gyo/components/side_bar.dart';
import 'package:gyo/models/CartItem.dart';
import 'package:gyo/models/Item.dart';
import 'package:gyo/models/ItemSize.dart';
import 'package:gyo/models/enums/sizes.dart';
import 'package:gyo/models/providers/order_provider.dart';
import 'package:gyo/pages/menu_categories_page.dart';
import 'package:gyo/shared/helper.dart';
import 'package:gyo/shared/styles.dart';
import 'package:provider/provider.dart';

import '../models/providers/theme_provider.dart';

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
  int quantity = 1;

  Widget quatitySelector() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 8,
      children: [
        TextButton(
          style: TextButton.styleFrom(
            fixedSize: Size(40, 40),
            padding: EdgeInsets.zero,
            backgroundColor: grey60,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          onPressed: () {
            if (quantity > 0) {
              setState(() {
                quantity--;
              });
            }
          },
          child: Icon(
            Icons.remove,
            color: whiteColor,
          ),
        ),
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: whiteColor,
            border: Border.all(color: grey60),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
            child: Text(
              quantity.toString(),
              style: poppinsFont18ptSemibold(),
            ),
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(
            fixedSize: Size(40, 40),
            padding: EdgeInsets.zero,
            backgroundColor: grey60,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          onPressed: () {
            setState(() {
              quantity++;
            });
          },
          child: Icon(
            Icons.add,
            color: whiteColor,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final Item item = widget.item;
    return Scaffold(
      appBar: KioskAppBar(),
      bottomNavigationBar: PayNowButton(),
      body: Container(
        decoration: BoxDecoration(
            gradient:
                context.read<ThemeProvider>().themePreset.backgroundGradient),
        child: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SideBar(),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
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
                          style: poppinsFont20ptSemibold(color: grey33),
                        ),
                        // item description
                        Text(
                          item.description ?? '',
                          style: poppinsFont12pt(),
                        ),
                        // item price
                        Text(
                          '\$${item.price ?? 'N/A'}',
                          style: poppinsFont18ptSemibold(),
                        ),
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
                                        ? grey60
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
                        quatitySelector(),
                        const SizedBox(height: 20),
                        // notes field?
                        // add to cart button
                        TextButton(
                          style: TextButton.styleFrom(
                            fixedSize: Size(200, 50),
                            backgroundColor: redColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          onPressed: () {
                            context.read<OrderProvider>().addOrderItem(CartItem(
                                  id: item.id.toString(),
                                  name: item.name,
                                  size: selectedSize,
                                  price: item.price,
                                  toppings: item.toppings,
                                  quantity: quantity,
                                ));
                            Navigator.pop(context);
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        MenuCategoriesPage()));
                          },
                          child: Text(
                            'Add to Cart',
                            style: poppinsFont12pt(color: whiteColor),
                          ),
                        ),
                        const SizedBox(height: 20),
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
