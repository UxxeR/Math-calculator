import 'package:flutter/material.dart';
import 'package:math_calculator/utils/app_constants.dart';

class OutlinedGradientButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget child;
  final Gradient? gradient;
  final double thickness;

  const OutlinedGradientButton({
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
        decoration: BoxDecoration(gradient: gradient, shape: BoxShape.circle,),
        child: Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: mainHexColor,
            
          ),
          margin: EdgeInsets.all(thickness),
          child: OutlinedButton(
            onPressed: onPressed,
            style: OutlinedButton.styleFrom(
              minimumSize: const Size(75, 75),
    
              alignment: Alignment.center,
              shadowColor: Colors.transparent,
              backgroundColor: mainHexColor,
              side: BorderSide(
                width: thickness,
                color: Colors.transparent,
              ),
              padding: const EdgeInsets.all(20),
              
              shape: CircleBorder(
                side: BorderSide(
                  width: thickness,
                  color: Colors.transparent,
                ),
              ),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
