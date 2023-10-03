import 'package:flutter/material.dart';
import 'package:balenciaga/Screens/CollectionPage.dart';

class BottomNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Color(0xFFF6F6F4),
      unselectedIconTheme: IconThemeData(color: Colors.black),
      selectedIconTheme: IconThemeData(color: Colors.lightBlueAccent),
      selectedLabelStyle: TextStyle(color: Colors.lightBlueAccent),
      unselectedLabelStyle: TextStyle(color: Colors.black),
      showSelectedLabels: true,
      elevation: 0.0,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        BottomNavigationBarItem(
            icon: MaterialButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>CollectionPage()));
            },child: Icon(Icons.shopping_cart)), label: 'Buy'),
        BottomNavigationBarItem(
            icon: Icon(Icons.notification_add_outlined),
            label: 'Notification'),
      ],
    );
  }
}