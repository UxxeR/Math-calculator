import 'package:flutter/material.dart';
import 'package:math_calculator/utils/app_constants.dart';

class ResultContainer extends StatelessWidget {
  const ResultContainer({Key? key, required this.history, required this.result}) : super(key: key);
final String history;
final String result;


  @override
  Widget build(BuildContext context) {
    return Container(
                decoration: BoxDecoration(
                  color: secondaryResetAccentHexColor.withOpacity(0.1),
                  gradient: resetButtonGradient,
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      widthFactor: 20,
                      child: Text(
                        history,
                        style: historyTextStyle,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      widthFactor: 20,
                      child: Text(
                        result,
                        style: resultTextStyle,
                      ),
                    ),
                  ],
                ),);
  }
}