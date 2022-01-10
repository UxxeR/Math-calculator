import 'package:flutter/material.dart';
import 'package:math_calculator/utils/app_constants.dart';

class GradientButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget child;
  final Gradient? gradient;
  final double thickness;

  const GradientButton({
    Key? key,
    this.onPressed,
    required this.child,
    this.gradient,
    this.thickness = 4,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: gradient,
          shape: BoxShape.circle,
        ),
        child: Container(
          margin: EdgeInsets.all(thickness),
          child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(75, 75),
              alignment: Alignment.center,
              primary: Colors.transparent,
              onPrimary: mainHexColor,
              shadowColor: Colors.black,
              elevation: 0,
              padding: const EdgeInsets.all(20),
              shape: const CircleBorder(),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
