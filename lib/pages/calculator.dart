import 'package:flutter/material.dart';
import 'package:math_calculator/components/gradiend_button.dart';
import 'package:math_calculator/components/gradiend_outlined_button.dart';
import 'package:math_calculator/utils/app_constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Calculator extends StatefulWidget {
  Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: secondaryResetAccentHexColor.withOpacity(0.3),
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
         
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      widthFactor: 20,
                      child: Text(
                        "0",
                        style: historyTextStyle,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      widthFactor: 20,
                      child: Text(
                        "0",
                        style: resultTextStyle,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const Divider(
              color: secondaryAccentHexColor,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GradientButton(
                  onPressed: () {},
                  child: Text(
                    "AC",
                    style: buttonTextStyle,
                  ),
                  gradient: resetButtonGradient,
                ),
                GradientButton(
                  onPressed: () {},
                  child: const Icon(
                    Icons.backspace,
                    color: Colors.white,
                  ),
                  gradient: resetButtonGradient,
                ),
                GradientButton(
                  onPressed: () {},
                  child: const Icon(
                    FontAwesomeIcons.percentage,
                    color: Colors.white,
                  ),
                  gradient: buttonGradient,
                ),
                GradientButton(
                  onPressed: () {},
                  child: const Icon(
                    FontAwesomeIcons.divide,
                    color: Colors.white,
                  ),
                  gradient: buttonGradient,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedGradientButton(
                  onPressed: () {},
                  child: Text(
                    "7",
                    style: buttonTextStyle,
                  ),
                  gradient: buttonGradient,
                ),
                OutlinedGradientButton(
                  onPressed: () {},
                  child: Text(
                    "8",
                    style: buttonTextStyle,
                  ),
                  gradient: buttonGradient,
                ),
                OutlinedGradientButton(
                  onPressed: () {},
                  child: Text(
                    "9",
                    style: buttonTextStyle,
                  ),
                  gradient: buttonGradient,
                ),
                GradientButton(
                  onPressed: () {},
                  child: const Icon(
                    FontAwesomeIcons.times,
                    color: Colors.white,
                  ),
                  gradient: buttonGradient,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedGradientButton(
                  onPressed: () {},
                  child: Text(
                    "4",
                    style: buttonTextStyle,
                  ),
                  gradient: buttonGradient,
                ),
                OutlinedGradientButton(
                  onPressed: () {},
                  child: Text(
                    "5",
                    style: buttonTextStyle,
                  ),
                  gradient: buttonGradient,
                ),
                OutlinedGradientButton(
                  onPressed: () {},
                  child: Text(
                    "6",
                    style: buttonTextStyle,
                  ),
                  gradient: buttonGradient,
                ),
                GradientButton(
                  onPressed: () {},
                  child: const Icon(
                    FontAwesomeIcons.minus,
                    color: Colors.white,
                  ),
                  gradient: buttonGradient,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedGradientButton(
                  onPressed: () {},
                  child: Text(
                    "1",
                    style: buttonTextStyle,
                  ),
                  gradient: buttonGradient,
                ),
                OutlinedGradientButton(
                  onPressed: () {},
                  child: Text(
                    "2",
                    style: buttonTextStyle,
                  ),
                  gradient: buttonGradient,
                ),
                OutlinedGradientButton(
                  onPressed: () {},
                  child: Text(
                    "3",
                    style: buttonTextStyle,
                  ),
                  gradient: buttonGradient,
                ),
                GradientButton(
                  onPressed: () {},
                  child: const Icon(
                    FontAwesomeIcons.plus,
                    color: Colors.white,
                  ),
                  gradient: buttonGradient,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedGradientButton(
                  onPressed: () {},
                  child: const Icon(
                    FontAwesomeIcons.minusCircle,
                    color: Colors.white,
                  ),
                  gradient: buttonGradient,
                ),
                OutlinedGradientButton(
                  onPressed: () {},
                  child: Text(
                    "0",
                    style: buttonTextStyle,
                  ),
                  gradient: buttonGradient,
                ),
                OutlinedGradientButton(
                  onPressed: () {},
                  child: Text(
                    ".",
                    style: buttonTextStyle,
                  ),
                  gradient: buttonGradient,
                ),
                GradientButton(
                  onPressed: () {},
                  child: const Icon(
                    FontAwesomeIcons.equals,
                    color: Colors.white,
                  ),
                  gradient: buttonGradient,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
