import 'package:flutter/material.dart';
import 'package:Mathematical/mainPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.teal[400],
      ),
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
