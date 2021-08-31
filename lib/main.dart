import 'package:flutter/material.dart';
import 'package:portfolio/homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Porfolio Website',
      home: HomePage(),
    );
  }
}
