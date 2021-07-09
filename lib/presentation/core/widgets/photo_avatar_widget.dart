import 'package:drosdogram/presentation/core/styles/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PhotoAvatarWidget extends StatelessWidget {
  const PhotoAvatarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 150,
          width: 150,
          decoration: Style.photoAvatarFirstDecoration,
        ),
        Positioned(
          bottom: 0,
          child: InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: Style.photoAvatarSecondDecoration,
              child: SvgPicture.asset("assets/images/photo.svg"),
            ),
          ),
        ),
      ],
    );
  }
}
