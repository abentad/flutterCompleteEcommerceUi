import 'package:flutter/material.dart';

Widget defaultButton({String text, Function press}) {
  return MaterialButton(
    onPressed: press,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18.0),
    ),
    color: Colors.deepOrange,
    height: 50.0,
    minWidth: double.infinity,
    child: Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: 18.0,
      ),
    ),
  );
}
