import 'package:flutter/material.dart';

class Style {
  const Style();

  static const splashScreenFirstStyle = TextStyle(
    height: 1.4,
    fontFamily: "CeraRoundPro",
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.normal,
    fontSize: 26,
    letterSpacing: 1.5,
  );

  static const splashScreenSecondStyle = TextStyle(
    height: 1.3,
    fontFamily: "CeraRoundPro",
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontSize: 14,
    letterSpacing: 0.8,
  );

  static const splashScreenThirdStyle = TextStyle(
    fontFamily: "CeraRoundPro",
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.normal,
    fontSize: 14,
  );

  static final splashScreenFirstDecoration = BoxDecoration(
    color: const Color.fromRGBO(255, 213, 0, 1),
    borderRadius: BorderRadius.circular(8),
    boxShadow: const <BoxShadow>[
      BoxShadow(
        color: Color.fromRGBO(255, 213, 0, 0.2),
        offset: Offset(0, 10),
        blurRadius: 20,
      ),
    ],
  );
}
