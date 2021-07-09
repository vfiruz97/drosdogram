import 'package:drosdogram/presentation/core/styles/style.dart';
import 'package:flutter/material.dart';

class YellowButtonWidget extends StatelessWidget {
  final String label;
  final double width;
  final bool isDisable;
  final Function onTap;

  const YellowButtonWidget({
    Key? key,
    required this.label,
    required this.isDisable,
    required this.onTap,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => isDisable ? {} : onTap(),
      child: Container(
        height: 40,
        alignment: Alignment.center,
        decoration: isDisable
            ? Style.splashScreenFirstDecoration.copyWith(
                color: const Color.fromRGBO(255, 236, 140, 1),
              )
            : Style.splashScreenFirstDecoration,
        child: Text(
          label,
          style: isDisable
              ? Style.splashScreenThirdStyle.copyWith(
                  fontWeight: FontWeight.w500,
                )
              : Style.splashScreenThirdStyle,
        ),
      ),
    );
  }
}
