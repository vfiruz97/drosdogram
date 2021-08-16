import 'package:drosdogram/presentation/core/widgets/object_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoadingSendMessageWidget extends StatelessWidget {
  const LoadingSendMessageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          "assets/images/send-message.svg",
          color: Colors.grey[100],
        ),
        Positioned(
          top: 0,
          right: 0,
          child: Container(
              width: 25,
              height: 25,
              padding: const EdgeInsets.all(5),
              child: CircularProgressIndicatorWidget()),
        ),
      ],
    );
  }
}
