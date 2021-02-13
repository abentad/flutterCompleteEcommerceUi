import 'package:flutter/material.dart';

Padding defaultButton({String text, Function press}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30.0),
    child: MaterialButton(
      onPressed: press,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
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
    ),
  );
}
