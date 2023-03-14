import 'package:appshop2023/main_color.dart';
import 'package:appshop2023/products_overview_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Shop',
      theme: ThemeData(
        primarySwatch: MaterialColor(0xffFC6828, color),
      ),
      home: ProductsOverviewScreen(),
    );
  }
}
