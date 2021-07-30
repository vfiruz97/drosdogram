import 'package:drosdogram/presentation/core/styles/style.dart';
import 'package:flutter/material.dart';

class TextUnderlinedButtonWidget extends StatelessWidget {
  final String label;
  final Function onTap;
  final Color color;
  final bool isAlignRight;

  const TextUnderlinedButtonWidget({
    Key? key,
    required this.label,
    required this.onTap,
    this.color = const Color.fromRGBO(0, 0, 0, 0.5),
    this.isAlignRight = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        alignment: isAlignRight ? Alignment.centerRight : Alignment.center,
        child: Text(
          label,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: Style.underlinedButtonStyle(color: color),
        ),
      ),
    );
  }
}
