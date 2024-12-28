import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gyo/components/kiosk_app_bar.dart';
import 'package:gyo/pages/menu_categories.dart';
import 'package:gyo/shared/assets.dart';
import 'package:gyo/shared/styles.dart';
import 'package:gyo/shared/text.dart';

class DiningSettingPage extends StatefulWidget {
  const DiningSettingPage({super.key});

  @override
  _DiningSettingPageState createState() => _DiningSettingPageState();
}

class _DiningSettingPageState extends State<DiningSettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: KioskAppBar(),
      endDrawer: Drawer(
        width: 600,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(topRight: Radius.circular(20))),
      ),
      backgroundColor: Colors.orange[300],
      body: SafeArea(
          child: Center(
        child: Row(
          spacing: 30,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(400, 400),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    backgroundColor: whiteColor),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MenuCategoriesPage(),
                    ),
                  );
                },
                child: Column(
                  spacing: 10,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        height: 100,
                        width: 100,
                        child: Image.asset(AppIcons.takeOutIcon)),
                    Text(
                      AppStrings.takeOut,
                      style: poppinsFont48ptSemiboldBlack,
                    ),
                  ],
                )),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(400, 400),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  backgroundColor: whiteColor,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MenuCategoriesPage(),
                    ),
                  );
                },
                child: Column(
                  spacing: 10,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: SvgPicture.asset(AppIcons.dineInIcon),
                    ),
                    Text(
                      AppStrings.dineIn,
                      style: poppinsFont48ptSemiboldBlack,
                    ),
                  ],
                )),
          ],
        ),
      )),
    );
  }
}
