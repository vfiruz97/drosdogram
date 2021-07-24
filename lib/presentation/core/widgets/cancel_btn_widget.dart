import 'package:flutter/material.dart';

import 'package:drosdogram/presentation/core/styles/style.dart';

class CancelButtonWidget extends StatelessWidget {
  const CancelButtonWidget({
    Key? key,
    this.label = "Отмена",
    this.isDisable = false,
    required this.onTap,
  }) : super(key: key);

  final String label;
  final bool isDisable;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => isDisable ? {} : onTap(),
      child: Container(
        height: 40,
        alignment: Alignment.center,
        decoration: Style.cancelButtonDecoration,
        child: Text(
          label,
          style: isDisable
              ? Style.cancelButtonStyle.copyWith(
                  fontWeight: FontWeight.w200,
                  color: const Color.fromRGBO(0, 0, 0, 0.2),
                )
              : Style.cancelButtonStyle,
        ),
      ),
    );
  }
}
