import 'package:flutter/material.dart';

import 'package:drosdogram/presentation/core/styles/style.dart';

class CancelButtonWidget extends StatelessWidget {
  const CancelButtonWidget({
    Key? key,
    this.label = "Отмена",
    required this.onTap,
  }) : super(key: key);

  final String label;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        height: 40,
        alignment: Alignment.center,
        decoration: Style.cancelButtonDecoration,
        child: Text(label, style: Style.cancelButtonStyle),
      ),
    );
  }
}
