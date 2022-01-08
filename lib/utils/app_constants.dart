import 'package:flutter/material.dart';

const Color mainHexColor = Color(0xFF10001f);
const Color primaryAccentHexColor = Color(0xFF690090);
const Color secondaryAccentHexColor = Color(0xFFcc42ff);
Color primaryResetAccentHexColor = const Color(0xFF690090).withOpacity(0.35);
Color secondaryResetAccentHexColor = const Color(0xFFcc42ff).withOpacity(0.35);
LinearGradient buttonGradient = const LinearGradient(
  colors: [secondaryAccentHexColor, primaryAccentHexColor],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);
LinearGradient resetButtonGradient = LinearGradient(
  colors: [secondaryResetAccentHexColor, primaryResetAccentHexColor],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);
TextStyle buttonTextStyle = const TextStyle(
  color: Colors.white,
  fontSize: 32,
);
TextStyle historyTextStyle = const TextStyle(
  color: Colors.grey,
  fontSize: 32,
);
TextStyle resultTextStyle = const TextStyle(
  color: Colors.white,
  fontSize: 70,
);
