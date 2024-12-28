import 'package:flutter/material.dart';
import 'package:gyo/pages/starting_page.dart';

class KioskAppBar extends StatefulWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(70);
  const KioskAppBar({super.key});

  @override
  _AppBarState createState() => _AppBarState();
}

class _AppBarState extends State<KioskAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.orange[100],
      toolbarHeight: 70,
      leadingWidth: 180,
      leading: TextButton(
          style: TextButton.styleFrom(shape: RoundedRectangleBorder()),
          child: Row(
            spacing: 10,
            children: [
              Icon(
                Icons.restart_alt_rounded,
                size: 40,
              ),
              Text(
                'Start Over',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          onPressed: () {
            // TODO(): clear providers
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const StartingPage(),
                ));
          }),
      actions: [
        ElevatedButton(
            onPressed: () {
              Scaffold.of(context).openEndDrawer();
            },
            child: Icon(Icons.card_travel))
      ],
    );
  }
}
