
import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/bottom_navbar.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Foodak - Food Delivery',
      theme: ThemeData(
        primaryColor: Colors.green,
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.grey[100],

        appBarTheme:  AppBarTheme(
          backgroundColor: Colors.grey[100],
          elevation: 0,
        ),

        dividerTheme: const DividerThemeData(
          thickness: 2,
          indent: 20,
          endIndent: 20,
        ),

        listTileTheme: const ListTileThemeData(
          iconColor: Colors.green,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: false,
          selectedLabelStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),

        ),
      ),
      home: const BottomNavBarPage(),
    );
  }
}