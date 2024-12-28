import 'package:flutter/material.dart';
import 'package:gyo/api/backend_api.dart';
import 'package:gyo/components/kiosk_app_bar.dart';
import 'package:gyo/components/menu_category_card.dart';
import 'package:gyo/models/MenuCategory.dart';

class MenuCategoriesPage extends StatefulWidget {
  const MenuCategoriesPage({super.key});

  @override
  _MenuCategoriesPageState createState() => _MenuCategoriesPageState();
}

class _MenuCategoriesPageState extends State<MenuCategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[300],
      appBar: KioskAppBar(),
      body: SafeArea(
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
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 3,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 40,
                  ),
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return MenuCategoryCard(
                      category: categories[index],
                    );
                  });
            }
          },
        ),
      ),
    );
  }
}
