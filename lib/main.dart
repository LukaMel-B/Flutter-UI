import 'package:flutter/material.dart';
import 'package:ui_design/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: const Color(0xff126FB4)),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'UI Designs',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: const HomeScreen(),
      ),
    );
  }
}
