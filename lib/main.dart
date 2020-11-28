import 'package:finfree_price_graph/pages/homePage.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Price Entry Line Chart';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'API - JSON - HTTP - fl_chart',
      home: HomePage(),
    );
  }
}
