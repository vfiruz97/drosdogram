import 'package:drosdogram/presentation/core/styles/style.dart';
import 'package:flutter/material.dart';

class CancelButtonWidget extends StatelessWidget {
  const CancelButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pop(context),
      child: Container(
        height: 40,
        alignment: Alignment.center,
        decoration: Style.cancelButtonDecorationd,
        child: const Text(
          "Отмена",
          style: Style.cancelButtonStyle,
        ),
      ),
    );
  }
}
