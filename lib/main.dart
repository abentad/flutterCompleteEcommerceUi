import 'package:eCommerceApp/screens/onBoardingScreen/onBoarding_screen.dart';
import 'package:eCommerceApp/themes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ECommerceApp',
      theme: theme(),
      home: OnBoardingScreen(),
    );
  }
}
