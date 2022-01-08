import 'package:flutter/material.dart';

const Color mainHexColor = Color(0xFF10001f);
const Color primaryAccentHexColor = Color(0xFF690090);
const Color secondaryAccentHexColor = Color(0xFFcc42ff);
const Color primaryResetAccentHexColor = Color(0xFF7900a3);
const Color secondaryResetAccentHexColor = Color(0xFF300041);
LinearGradient buttonGradient = const LinearGradient(
  colors: [secondaryAccentHexColor, primaryAccentHexColor],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);
LinearGradient resetButtonGradient = const LinearGradient(
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