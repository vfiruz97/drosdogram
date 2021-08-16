import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PickerImage extends StatelessWidget {
  const PickerImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/images/paperclip.svg",
      color: Colors.grey[200],
    );
  }
}
