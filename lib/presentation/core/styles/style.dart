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

  static const appBarTitleStyle = TextStyle(
    fontFamily: "CeraRoundPro",
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.normal,
    fontSize: 18,
  );

  static const registerScteenFirstStyle = TextStyle(
    height: 1.4,
    fontFamily: "CeraRoundPro",
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.normal,
    fontSize: 20,
    letterSpacing: 0.6,
    color: Colors.black,
  );

  static const textFieldFirstStyle = TextStyle(
    fontFamily: "CeraRoundPro",
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontSize: 14,
  );

  static const underlinedTextStyle = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 0.5),
    fontFamily: "CeraRoundPro",
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontSize: 14,
  );

  static TextStyle underlinedButtonStyle({Color? color}) => TextStyle(
        color: color,
        fontFamily: "CeraRoundPro",
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        fontSize: 14,
        decoration: TextDecoration.underline,
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

  static InputDecoration splashScreenFirstDecorations({
    String hintText = 'Иванов Иван Иванович',
  }) =>
      InputDecoration(
        hintText: hintText,
        contentPadding: const EdgeInsets.only(left: 16, top: 13, bottom: 13),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(
            color: Color.fromRGBO(0, 0, 0, 0.25),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(
            color: Color.fromRGBO(0, 0, 0, 0.25),
          ),
        ),
      );

  static const appBarBorderDecoration = BoxDecoration(
    border: Border(
      bottom: BorderSide(
        width: 0.2,
        color: Color.fromRGBO(0, 0, 0, 0.3),
      ),
    ),
  );

  static final photoAvatarFirstDecoration = BoxDecoration(
    color: const Color.fromRGBO(242, 242, 242, 1),
    shape: BoxShape.circle,
    border: Border.all(
      color: const Color.fromRGBO(255, 255, 255, 1),
      width: 4,
    ),
    boxShadow: const [
      BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.05),
        blurRadius: 25,
      ),
    ],
  );

  static const photoAvatarSecondDecoration = BoxDecoration(
    color: Color.fromRGBO(255, 255, 255, 1),
    shape: BoxShape.circle,
    boxShadow: [
      BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.1),
        blurRadius: 15,
      ),
    ],
  );
}
