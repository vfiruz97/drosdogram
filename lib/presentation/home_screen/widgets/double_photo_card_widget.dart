import 'package:flutter/material.dart';

class DoublePhotoCardWidget extends StatelessWidget {
  const DoublePhotoCardWidget({
    Key? key,
    required this.images,
  }) : super(key: key);

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    final imageCount = images.length;
    final List<Widget> _sliders = [];
    int index = 0;

    for (var i = 0; i < imageCount / 2; i++) {
      _sliders.add(
        Row(
          children: [
            if (index < imageCount)
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 7, right: 3.5),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      images[index],
                      height: 140.0,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            Expanded(
              child: ((index + 1) < imageCount)
                  ? Container(
                      margin: const EdgeInsets.only(bottom: 7, left: 3.5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          images[index + 1],
                          height: 140.0,
                          fit: BoxFit.fill,
                        ),
                      ),
                    )
                  : const SizedBox(),
            ),
          ],
        ),
      );
      index += 2;
    }
    return Column(
      children: _sliders,
    );
  }
}
