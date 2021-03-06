import 'package:flutter/material.dart';
import 'package:kaka_online/Homepage.dart';
import 'package:kaka_online/Splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kaka Online',
      theme: ThemeData(
        primarySwatch: Colors.lime,
      ),

      home: SpashScreen(),
    );
  }
}
