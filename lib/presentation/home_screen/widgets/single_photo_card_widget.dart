import 'package:drosdogram/presentation/core/config/config.dart';
import 'package:flutter/material.dart';

class SinglePhotoCardWidget extends StatelessWidget {
  const SinglePhotoCardWidget({
    Key? key,
    required this.backImage,
  }) : super(key: key);

  final String backImage;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Image.network(
        backImage,
        height: 140.0,
        width: Config.getScreenWidth(context),
        fit: BoxFit.fill,
      ),
    );
  }
}
