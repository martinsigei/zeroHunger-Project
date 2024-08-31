import 'package:flutter/material.dart';
import 'package:zerohunger_logistics_app/pages/bottomnav.dart';
// import 'package:zerohunger_logistics_app/pages/home.dart'; // Import the Home widget

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ZeroHunger Logistics',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BottomNav()
    );
  }
}
