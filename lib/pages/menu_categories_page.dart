import 'package:flutter/material.dart';
import 'package:gyo/api/backend_api.dart';
import 'package:gyo/components/kiosk_app_bar.dart';
import 'package:gyo/components/menu_category_card.dart';
import 'package:gyo/components/pay_now_button.dart';
import 'package:gyo/models/MenuCategory.dart';
import 'package:gyo/shared/assets.dart';
import 'package:gyo/shared/styles.dart';

class MenuCategoriesPage extends StatefulWidget {
  const MenuCategoriesPage({super.key});

  @override
  _MenuCategoriesPageState createState() => _MenuCategoriesPageState();
}

class _MenuCategoriesPageState extends State<MenuCategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: PayNowButton(),
      appBar: KioskAppBar(),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(gradient: orangeGradient),
          child: FutureBuilder(
            future: BackendAPI.getMenuCategories(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: const CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else {
                final List<MenuCategory> categories = snapshot.data ?? [];
                return GridView.builder(
                    padding: const EdgeInsets.all(20),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 1.7,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                    ),
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      String icon = '';
                      if (categories[index].name != null) {
                        if (categories[index]
                            .name!
                            .toLowerCase()
                            .contains('burger')) {
                          icon = FoodIcons.burgerIcon;
                        } else if (categories[index]
                            .name!
                            .toLowerCase()
                            .contains('pizza')) {
                          icon = FoodIcons.pizzaIcon;
                        } else if (categories[index]
                            .name!
                            .toLowerCase()
                            .contains('pasta')) {
                          icon = FoodIcons.pastaIcon;
                        } else if (categories[index]
                            .name!
                            .toLowerCase()
                            .contains('dessert')) {
                          icon = FoodIcons.dessertIcon;
                        } else if (categories[index]
                            .name!
                            .toLowerCase()
                            .contains('drink')) {
                          icon = FoodIcons.sodaIcon;
                        } else if (categories[index]
                            .name!
                            .toLowerCase()
                            .contains('salad')) {
                          icon = FoodIcons.saladIcon;
                        } else if (categories[index]
                            .name!
                            .toLowerCase()
                            .contains('soda')) {
                          icon = FoodIcons.sodaIcon;
                        } else if (categories[index]
                            .name!
                            .toLowerCase()
                            .contains('side')) {
                          icon = FoodIcons.sidesIcon;
                        }
                      }
                      return MenuCategoryCard(
                        category: categories[index],
                        icon: icon,
                      );
                    });
              }
            },
          ),
        ),
      ),
    );
  }
}
