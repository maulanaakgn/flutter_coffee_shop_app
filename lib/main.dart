import 'package:flutter/material.dart';
import 'package:flutter_coffee_shop_app/views/screens/mainscreen.dart';
import 'package:flutter_coffee_shop_app/views/screens/onboarding.dart';
import 'package:flutter_coffee_shop_app/views/screens/order.dart';

import 'views/screens/details.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
          '/': (context) => const OnBoarding(),
          '/main-screen': (context) => const MainScreen(),
          '/details': (context) => const Details(),
          '/order': (context) => const Order(),
        },
    );
  }
}
