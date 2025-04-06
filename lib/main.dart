import 'package:flutter/material.dart';
import 'package:gyo/models/providers/theme_provider.dart';
import 'package:provider/provider.dart';

import 'pages/starting_page.dart';
import 'models/providers/order_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => OrderProvider()),
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
      ],
      child: MaterialApp(
        title: 'GYO Orders',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.orangeAccent),
          useMaterial3: true,
        ),
        home: const StartingPage(),
      ),
    );
  }
}
