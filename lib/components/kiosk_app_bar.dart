import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gyo/models/providers/order_provider.dart';
import 'package:gyo/shared/assets.dart';
import 'package:gyo/shared/styles.dart';
import 'package:provider/provider.dart';

import '../models/providers/theme_provider.dart';

class KioskAppBar extends StatefulWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(80);
  const KioskAppBar({super.key});

  @override
  State<KioskAppBar> createState() => _KioskAppBarState();
}

class _KioskAppBarState extends State<KioskAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: context.read<ThemeProvider>().themePreset.secondaryColor,
      toolbarHeight: 80,
      leadingWidth: 190,
      leading: TextButton(
        style: TextButton.styleFrom(shape: RoundedRectangleBorder()),
        child: Row(
          spacing: 10,
          children: [
            Icon(Icons.restart_alt_rounded, size: 40),
            Text('Start Over', style: poppinsFont20ptSemibold()),
          ],
        ),
        onPressed: () {
          context.read<OrderProvider>().clearOrderItems();
          Navigator.popUntil(context, (route) => route.isFirst);
        },
      ),
      actions: [
        TextButton(
          style: TextButton.styleFrom(
            backgroundColor:
                context.read<ThemeProvider>().themePreset.primaryColor,
            fixedSize: Size.fromWidth(170),
            shape: RoundedRectangleBorder(),
            padding: const EdgeInsets.symmetric(horizontal: 15),
          ),
          onPressed: () {
            Scaffold.of(context).openEndDrawer();
          },
          child: Row(
            spacing: 20,
            children: [
              Text('View Cart', style: poppinsFont16ptSemibold()),
              SizedBox(width: 40, child: SvgPicture.asset(AppIcons.cartIcon)),
            ],
          ),
        )
      ],
    );
  }
}
