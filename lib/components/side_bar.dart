import 'package:flutter/material.dart';
import 'package:gyo/api/backend_api.dart';
import 'package:gyo/models/MenuCategory.dart';
import 'package:gyo/pages/menu_items_page.dart';
import 'package:gyo/shared/styles.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.2,
      height: MediaQuery.of(context).size.height,
      color: Colors.orange[100],
      child: FutureBuilder(
        future: BackendAPI.getMenuCategories(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: const CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            List<MenuCategory> categories = snapshot.data ?? [];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: ListView.builder(
                itemCount: categories.length,
                itemBuilder: (context, index) => Column(
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.orange[200],
                        fixedSize: Size(
                            MediaQuery.of(context).size.width * 0.2 - 40, 90),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        padding: const EdgeInsets.all(15),
                      ),
                      onPressed: () {
                        // Navigator.pop(context);
                        // Navigator.pop(context);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MenuItemsPage(
                                    itemList: categories[index].items ?? [])));
                      },
                      child: Column(
                        spacing: 5,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 40,
                            width: 40,
                            child: Image.asset(categories[index].image ?? ''),
                          ),
                          Text(
                            categories[index].name ?? 'Category',
                            style: poppinsFont16ptSemibold(),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
