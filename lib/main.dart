import 'package:flutter/material.dart';
import 'package:flutter_project/homepage.dart';
import 'package:flutter_project/pages/LogInPage.dart';
import 'package:flutter_project/pages/LogInPageReal.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LogInPageReal(title: 'LogInPage'),
    );
  }
}