import 'dart:math';
import 'package:flutter/material.dart';
import 'package:udemy_project/helper/common_utils.dart' show imageAssetWidget, textWidget;

class DiceRollerWidget extends StatefulWidget {
  const DiceRollerWidget({super.key});

  @override
  State<DiceRollerWidget> createState() => _DiceRollerWidgetState();
}

class _DiceRollerWidgetState extends State<DiceRollerWidget> {
  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        imageAssetWidget(imagePath: 'assets/images/dice-${index}.png'),
        TextButton(
            onPressed: () {
              setState(() {
                index = Random().nextInt(6) + 1;
              });
            },
            child: textWidget(
                text: "클릭시 무작위 주사위", color: Colors.white, isBold: true)),
      ],
    );
  }
}