import 'package:flutter/material.dart';
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
      ],
      child: MaterialApp(
        title: 'GYO Pay',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.orangeAccent),
          useMaterial3: true,
        ),
        home: const StartingPage(),
      ),
    );
  }
}
