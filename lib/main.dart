import 'package:flutter/material.dart';
import 'package:login_app/screens/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PecFood',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );

  }// This widget is the root of your application.
}