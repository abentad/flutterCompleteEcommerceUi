import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Column splachContent({String title, subtitle, image}) {
  return Column(
    children: [
      Spacer(),
      Text(
        title,
        style: TextStyle(
            fontSize: 36.0, fontWeight: FontWeight.bold, color: Colors.orange),
      ),
      Text(
        subtitle,
        textAlign: TextAlign.center,
        style: TextStyle(),
      ),
      Spacer(),
      SvgPicture.asset(
        image,
        height: 200.0,
        width: 220.0,
      ),
    ],
  );
}
