import 'package:flutter/material.dart';
import 'package:math_calculator/components/gradiend_button.dart';
import 'package:math_calculator/components/gradiend_outlined_button.dart';
import 'package:math_calculator/components/result_container.dart';
import 'package:math_calculator/utils/app_constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  double firstNumber = 0;
  double secondNumber = 0;
  String mathOperator = "";
  String history = "";
  String result = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ResultContainer(
                history: history,
                result: result,
              ),
            ),
            const Divider(
              color: secondaryAccentHexColor,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GradientButton(
                  onPressed: () {
                    setState(() {
                      allClear();
                    });
                  },
                  child: Text(
                    "AC",
                    style: buttonTextStyle,
                  ),
                  gradient: resetButtonGradient,
                ),
                GradientButton(
                  onPressed: () {
                    setState(() {
                      undo();
                    });
                  },
                  child: const Icon(
                    Icons.backspace,
                    color: Colors.white,
                  ),
                  gradient: resetButtonGradient,
                ),
                GradientButton(
                  onPressed: () {
                    setState(() {
                      operation("%");
                    });
                  },
                  child: const Icon(
                    FontAwesomeIcons.percentage,
                    color: Colors.white,
                  ),
                  gradient: buttonGradient,
                ),
                GradientButton(
                  onPressed: () {
                    setState(() {
                      operation("/");
                    });
                  },
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
                  onPressed: () {
                    setState(() {
                      introduceNumber("7");
                    });
                  },
                  child: Text(
                    "7",
                    style: buttonTextStyle,
                  ),
                  gradient: buttonGradient,
                ),
                OutlinedGradientButton(
                  onPressed: () {
                    setState(() {
                      introduceNumber("8");
                    });
                  },
                  child: Text(
                    "8",
                    style: buttonTextStyle,
                  ),
                  gradient: buttonGradient,
                ),
                OutlinedGradientButton(
                  onPressed: () {
                    setState(() {
                      introduceNumber("9");
                    });
                  },
                  child: Text(
                    "9",
                    style: buttonTextStyle,
                  ),
                  gradient: buttonGradient,
                ),
                GradientButton(
                  onPressed: () {
                    setState(() {
                      operation("x");
                    });
                  },
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
                  onPressed: () {
                    setState(() {
                      introduceNumber("4");
                    });
                  },
                  child: Text(
                    "4",
                    style: buttonTextStyle,
                  ),
                  gradient: buttonGradient,
                ),
                OutlinedGradientButton(
                  onPressed: () {
                    setState(() {
                      introduceNumber("5");
                    });
                  },
                  child: Text(
                    "5",
                    style: buttonTextStyle,
                  ),
                  gradient: buttonGradient,
                ),
                OutlinedGradientButton(
                  onPressed: () {
                    setState(() {
                      introduceNumber("6");
                    });
                  },
                  child: Text(
                    "6",
                    style: buttonTextStyle,
                  ),
                  gradient: buttonGradient,
                ),
                GradientButton(
                  onPressed: () {
                    setState(() {
                      operation("-");
                    });
                  },
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
                  onPressed: () {
                    setState(() {
                      introduceNumber("1");
                    });
                  },
                  child: Text(
                    "1",
                    style: buttonTextStyle,
                  ),
                  gradient: buttonGradient,
                ),
                OutlinedGradientButton(
                  onPressed: () {
                    setState(() {
                      introduceNumber("2");
                    });
                  },
                  child: Text(
                    "2",
                    style: buttonTextStyle,
                  ),
                  gradient: buttonGradient,
                ),
                OutlinedGradientButton(
                  onPressed: () {
                    setState(() {
                      introduceNumber("3");
                    });
                  },
                  child: Text(
                    "3",
                    style: buttonTextStyle,
                  ),
                  gradient: buttonGradient,
                ),
                GradientButton(
                  onPressed: () {
                    setState(() {
                      operation("+");
                    });
                  },
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
                  onPressed: () {
                    setState(() {
                      negateValue();
                    });
                  },
                  child: const Text(
                    "+/-",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                    ),
                  ),
                  gradient: buttonGradient,
                ),
                OutlinedGradientButton(
                  onPressed: () {
                    setState(() {
                      introduceNumber("0");
                    });
                  },
                  child: Text(
                    "0",
                    style: buttonTextStyle,
                  ),
                  gradient: buttonGradient,
                ),
                OutlinedGradientButton(
                  onPressed: () {
                    setState(() {
                      introduceDecimal();
                    });
                  },
                  child: Text(
                    ".",
                    style: buttonTextStyle,
                  ),
                  gradient: buttonGradient,
                ),
                GradientButton(
                  onPressed: () {
                    setState(() {
                      calculateResult();
                    });
                  },
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

  void allClear() {
    firstNumber = 0;
    secondNumber = 0;
    history = "";
    result = "0";
    mathOperator = "";
  }

  void negateValue() {
    if (result.substring(0, 1) == "-") {
      result = result.substring(1, result.length);
    } else if (result != "0") {
      result = "-$result";
    }
  }

  void undo() {
    if (result.length == 1) {
      result = "0";
    } else {
      result = result.substring(0, result.length - 1);
    }
  }

  void introduceNumber(String number) {
    if (result != "0") {
      result += number;
    } else {
      result = number;
    }
  }

  void introduceDecimal() {
    if (!result.contains(".") && result != "0") {
      result += ".";
    }
  }

  void operation(String mathOperator) {
    this.mathOperator = mathOperator;

    if (history.contains("=")) {
      history = "";
      firstNumber = 0;
    }

    if (result != "0") {
      if (firstNumber != 0) {
        calculateResult();
      } else {
        firstNumber = double.parse(result);
      }

      history = "$result $mathOperator ";
      result = "0";
    }
  }

  void calculateResult() {
    if (history.contains("=")) {
      history = "";
    }

    secondNumber = double.parse(result);

    switch (mathOperator) {
      case "+":
        result = (firstNumber + secondNumber).toString();
        break;
      case "-":
        result = (firstNumber - secondNumber).toString();
        break;
      case "x":
        result = (firstNumber * secondNumber).toString();
        break;
      case "/":
        result = (firstNumber / secondNumber).toString();
        break;
      case "%":
        result = (firstNumber % secondNumber).toString();
        break;
      default:
        break;
    }

    if (mathOperator.isNotEmpty) {
      history = "$firstNumber $mathOperator $secondNumber =";
    } else {
      history = "$result =";
    }
    firstNumber = double.parse(result);
    secondNumber = 0;
  }
}
