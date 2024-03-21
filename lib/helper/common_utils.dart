import 'package:flutter/material.dart';

Text textWidget(
    {String text = 'null',
    Color color = Colors.red,
    double size = 14.0,
    bool isBold = false}) {
  return Text(
    text,
    style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: isBold ? FontWeight.bold : null),
  );
}

Image imageAssetWidget(
    {String imagePath = "null.png", double width = 200, double = 200}) {
  return Image.asset(imagePath, width: 200, height: 200);
}
