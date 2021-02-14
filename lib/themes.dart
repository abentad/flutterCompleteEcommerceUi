import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    inputDecorationTheme: inputDecorationTheme(),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: appBarTheme(),
    primarySwatch: Colors.blue,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(28.0),
      borderSide: BorderSide(color: Colors.grey),
      gapPadding: 10,
    );
  }

  return InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
    enabledBorder: outlineInputBorder(),
    focusedBorder: outlineInputBorder(),
    border: outlineInputBorder(),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: Colors.white,
    elevation: 0,
    brightness: Brightness.light,
    iconTheme: IconThemeData(color: Colors.black),
    textTheme: TextTheme(
      headline6: TextStyle(color: Color(0xFF8B8B8B), fontSize: 18.0),
    ),
  );
}
