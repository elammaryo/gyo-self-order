import 'package:flutter/material.dart';

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
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
              style: TextButton.styleFrom(minimumSize: Size(500, 500)),
              onPressed: () {},
              child: Text('Take Out')),
          TextButton(
              style: TextButton.styleFrom(minimumSize: Size(500, 500)),
              onPressed: () {},
              child: Text('Dine In')),
        ],
      )),
    );
  }
}
