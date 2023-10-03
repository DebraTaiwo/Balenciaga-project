import 'package:flutter/material.dart';
import 'package:balenciaga/Screens/ShoppingPage.dart';

void main() {
  runApp(Balenciaga());
}

class Balenciaga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BALENCIAGA APP',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Color(0xFFF6F5F5),
          elevation: 0.0,
          iconTheme: IconThemeData(
            color: Colors.black,
            size: 30,
          ),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        scaffoldBackgroundColor: Color(0xFFF6F5F5),
        textTheme: TextTheme(
          bodyLarge: TextStyle(fontSize: 18, color: Colors.black),
          titleLarge: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: ShoppingPage(),
    );
  }
}
