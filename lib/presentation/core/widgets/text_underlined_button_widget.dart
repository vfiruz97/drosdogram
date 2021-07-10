import 'package:drosdogram/presentation/core/styles/style.dart';
import 'package:flutter/material.dart';

class TextUnderlinedButtonWidget extends StatelessWidget {
  final String label;
  final Function onTap;
  final Color color;

  const TextUnderlinedButtonWidget({
    Key? key,
    required this.label,
    required this.onTap,
    this.color = const Color.fromRGBO(0, 0, 0, 0.5),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        alignment: Alignment.center,
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: Style.underlinedButtonStyle(color: color),
        ),
      ),
    );
  }
}
