import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SendMessageImage extends StatelessWidget {
  const SendMessageImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/images/send-message.svg",
      color: Colors.grey[400],
    );
  }
}
