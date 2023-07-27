// import 'package:first_app/styled_text.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});

  final List<Color> colors;

void rollDice () {

}
  @override
  Widget build(BuildContext context) {
    return (Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: startAlignment, end: endAlignment, colors: colors)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/dice-2.png',
                width: 200,
              ),
             TextButton(onPressed: rollDice, style: TextButton.styleFrom(foregroundColor: Colors.white, backgroundColor: Colors.blue, textStyle: const TextStyle(fontSize: 30)) , child: const Text('Roll dice'), )
            ],
          ),
        )));
  }
}
