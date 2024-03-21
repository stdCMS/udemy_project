import 'package:flutter/material.dart';

import 'package:udemy_project/widget/dice_roller_widget.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(body: GradientContainer()),
  ));
}

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(215, 0, 255, 255),
            Color.fromARGB(134, 231, 23, 23)
          ],
          begin: Alignment.topLeft,
          end: Alignment.center,
        ),
      ),
      child: const Center(child: DiceRollerWidget()),
      // child: textWidget(text: "뭘봐", size: 100)
    );
  }
}


