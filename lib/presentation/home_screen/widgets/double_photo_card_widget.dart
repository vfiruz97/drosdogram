import 'package:flutter/material.dart';

class DoublePhotoCardWidget extends StatelessWidget {
  const DoublePhotoCardWidget({
    Key? key,
    required this.firstImageUrl,
    required this.secondImageUrl,
  }) : super(key: key);

  final String firstImageUrl;
  final String secondImageUrl;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 6,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              firstImageUrl,
              height: 140.0,
              fit: BoxFit.fill,
            ),
          ),
        ),
        const SizedBox(width: 7),
        Expanded(
          flex: 4,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              secondImageUrl,
              height: 140.0,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}
