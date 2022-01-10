import 'package:flutter/material.dart';
import 'package:math_calculator/pages/calculator.dart';
import 'package:math_calculator/utils/app_constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: mainHexColor,
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'ShareTechMono',
      ),
      debugShowCheckedModeBanner: false,
      home: Calculator(),
    );
  }
}
