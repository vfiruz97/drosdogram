import 'package:drosdogram/presentation/core/styles/style.dart';
import 'package:flutter/material.dart';

class OutlineButtonWidget extends StatelessWidget {
  final String label;
  final double width;
  final Color color;
  final Function onTap;

  const OutlineButtonWidget({
    Key? key,
    required this.label,
    required this.onTap,
    required this.width,
    this.color = const Color.fromRGBO(0, 0, 0, 0.5),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        height: 40,
        alignment: Alignment.center,
        decoration: Style.outlineButtonDecoration(color: color),
        child: Text(
          label,
          style: Style.outlinedButtonLabelStyle.copyWith(color: color),
        ),
      ),
    );
  }
}
