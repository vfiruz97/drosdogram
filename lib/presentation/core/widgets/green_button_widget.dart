import 'package:drosdogram/presentation/core/styles/style.dart';
import 'package:flutter/material.dart';

class GreenButtonWidget extends StatelessWidget {
  final String label;
  final Function onTap;

  const GreenButtonWidget({
    Key? key,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 43),
            child: Container(
              height: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(27, 189, 56, 1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(label, style: Style.greenButtonStyle),
            ),
          ),
          // Positioned(
          //   right: 20,
          //   child: SvgPicture.asset("assets/images/logo.svg"),
          // ),
        ],
      ),
    );
  }
}
