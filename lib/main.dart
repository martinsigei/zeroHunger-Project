import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:zerohunger_logistics_app/pages/onboard.dart';
import 'package:zerohunger_logistics_app/firebase_options.dart';
//import 'package:zerohunger_logistics_app/pages/bottomnav.dart';
//import 'package:zerohunger_logistics_app/pages/login.dart';
//import 'package:zerohunger_logistics_app/pages/signup.dart';
// import 'package:zerohunger_logistics_app/pages/home.dart'; // Import the Home widget
//import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
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
      home: Onboard()
    );
  }
}
