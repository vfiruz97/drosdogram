import 'package:drosdogram/presentation/core/styles/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ObectCardWidget extends StatelessWidget {
  const ObectCardWidget({
    Key? key,
    required this.backImage,
    required this.onTap,
    required this.label,
  }) : super(key: key);

  final String backImage;
  final Function onTap;
  final String label;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 8,
        ),
        child: Container(
          height: 130,
          alignment: Alignment.bottomCenter,
          decoration: Style.objectCardDecoration(backImage: backImage),
          child: Padding(
            padding: const EdgeInsets.only(left: 12, right: 14, bottom: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(label, style: Style.objectCardStyle),
                SvgPicture.asset("assets/images/arrow-right-white.svg"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
