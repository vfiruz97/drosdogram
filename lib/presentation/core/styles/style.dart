import 'package:cached_network_image/cached_network_image.dart';
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

  static const outlinedButtonLabelStyle = TextStyle(
    fontFamily: "CeraRoundPro",
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
    fontSize: 14,
  );

  static const bottomNoteCardFirstStyle = TextStyle(
    fontFamily: "CeraRoundPro",
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
    fontSize: 20,
    color: Colors.black,
    height: 1.3,
  );

  static const bottomNoteCardSecondStyle = TextStyle(
    height: 1.3,
    fontFamily: "CeraRoundPro",
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontSize: 14,
    color: Color.fromRGBO(0, 0, 0, 0.8),
  );

  static const objectCardStyle = TextStyle(
    fontFamily: "CeraRoundPro",
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    fontSize: 18,
    color: Colors.white,
  );

  static const objectInfoCardFirstStyle = TextStyle(
    fontFamily: "CeraRoundPro",
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontSize: 12,
  );

  static const objectInfoCardSecondStyle = TextStyle(
    fontFamily: "CeraRoundPro",
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.normal,
    fontSize: 14,
  );

  static const objectInfoCardThirdStyle = TextStyle(
    fontFamily: "CeraRoundPro",
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    fontSize: 9,
  );

  static const objectInfoCardForthStyle = TextStyle(
    fontFamily: "CeraRoundPro",
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontSize: 12,
    height: 1.2,
  );

  static const carouselItemFirstStyle = TextStyle(
    fontFamily: "CeraRoundPro",
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
    fontSize: 26,
    color: Colors.white,
  );

  static const carouselItemSecondStyle = TextStyle(
    fontFamily: "CeraRoundPro",
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontSize: 14,
    color: Colors.white,
    letterSpacing: 1.1,
    height: 1.3,
  );

  static const greenButtonStyle = TextStyle(
    fontFamily: "CeraRoundPro",
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    fontSize: 14,
    color: Colors.white,
  );

  static const titleWidgetStyle = TextStyle(
    fontFamily: "CeraRoundPro",
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.normal,
    fontSize: 26,
    color: Colors.black,
    letterSpacing: 1.2,
  );

  static const uploadWidgetStyle = TextStyle(
    fontFamily: "CeraRoundPro",
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontSize: 14,
  );

  static const addressWidgetStyle = TextStyle(
    fontFamily: "CeraRoundPro",
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontSize: 14,
    color: Color.fromRGBO(0, 0, 0, 0.5),
    letterSpacing: 1,
  );

  static const cancelButtonStyle = TextStyle(
    fontFamily: "CeraRoundPro",
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    fontSize: 14,
  );

  static const selectboxWidgetStyle = TextStyle(
    fontFamily: "CeraRoundPro",
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    fontSize: 14,
  );

  static const statusInfoCardFirstStyle = TextStyle(
    fontFamily: "CeraRoundPro",
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.normal,
    fontSize: 14,
    color: Colors.black,
  );

  static const statusInfoCardSecondStyle = TextStyle(
    fontFamily: "CeraRoundPro",
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontSize: 14,
    color: Colors.black,
  );

  static const chatBubbleFirstStyle = TextStyle(
    height: 1,
    fontFamily: "CeraRoundPro",
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    fontSize: 12,
    color: Color.fromRGBO(0, 0, 0, 0.8),
  );

  static const chatBubbleSecondStyle = TextStyle(
    fontFamily: "CeraRoundPro",
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
    fontSize: 10,
  );

  static const chatBubbleThirdStyle = TextStyle(
    fontFamily: "CeraRoundPro",
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    fontSize: 10,
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
        contentPadding:
            const EdgeInsets.only(left: 16, top: 13, bottom: 13, right: 8),
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

  static const chatTextareaDecoratdion = InputDecoration(
    contentPadding: EdgeInsets.only(left: 16, top: 13, bottom: 13, right: 56),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8)),
      borderSide: BorderSide(
        color: Color.fromRGBO(0, 0, 0, 0.25),
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8)),
      borderSide: BorderSide(
        color: Color.fromRGBO(0, 0, 0, 0.25),
      ),
    ),
  );

  static const appBarBorderDecoration = BoxDecoration(
    color: Colors.white,
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

  static BoxDecoration outlineButtonDecoration({required Color color}) =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: color,
        ),
      );

  static BoxDecoration objectCardDecoration({required String backImage}) =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(width: 0.1),
        image: DecorationImage(
          image: CachedNetworkImageProvider(backImage),
          fit: BoxFit.fill,
        ),
      );

  static final statusInfoCardDecoration = BoxDecoration(
    color: const Color.fromRGBO(242, 242, 242, 1),
    borderRadius: BorderRadius.circular(100),
  );

  static final dialogFirstDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(8),
  );

  static final cancelButtonDecoration = BoxDecoration(
    color: const Color.fromRGBO(0, 0, 0, 0.05),
    borderRadius: BorderRadius.circular(8),
  );

  static const selectboxDecoration = InputDecoration(
    border: OutlineInputBorder(
      gapPadding: 1,
      borderRadius: BorderRadius.all(
        Radius.circular(8),
      ),
    ),
  );

  static const yellowCircleDecoration = BoxDecoration(
    shape: BoxShape.circle,
    color: Colors.yellow,
  );

  static final objectInfoCardDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(8),
    border: Border.all(
      color: const Color.fromRGBO(0, 0, 0, 0.05),
    ),
    boxShadow: const [
      BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.05),
        offset: Offset(0, 3),
        blurRadius: 5,
      ),
    ],
  );

  static BoxDecoration chatBubbleDecoration({required bool isMyMessage}) =>
      BoxDecoration(
        color: isMyMessage
            ? const Color.fromRGBO(255, 213, 0, 1)
            : const Color.fromRGBO(0, 0, 0, 0.05),
        borderRadius: BorderRadius.circular(8),
      );
}
