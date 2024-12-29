import 'package:flutter/material.dart';
import 'package:gyo/pages/dining_setting_page.dart';
import 'package:gyo/shared/styles.dart';

import '../shared/text.dart';

class StartingPage extends StatefulWidget {
  const StartingPage({super.key});

  @override
  _StartingPageState createState() => _StartingPageState();
}

class _StartingPageState extends State<StartingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.orange[300],
          child: TextButton(
            style: TextButton.styleFrom(shape: RoundedRectangleBorder()),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const DiningSettingPage(),
              ));
            },
            child: Center(
              child: Text(
                AppStrings.orderHere,
                style: poppinsFont90ptBoldBlack,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
