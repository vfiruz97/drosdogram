import 'package:cached_network_image/cached_network_image.dart';
import 'package:drosdogram/presentation/core/widgets/photo_view_widget.dart';
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

    String _im1 = '';
    String _im2 = '';

    for (var i = 0; i < imageCount / 2; i++) {
      _im1 = images[index];
      if ((index + 1) < imageCount) _im2 = images[index + 1];
      _sliders.add(
        Row(
          children: [
            if (index < imageCount)
              Expanded(
                child: InkWell(
                  onTap: () {
                    PhotoViewWidget.show(context, url: _im1);
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 7, right: 3.5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: CachedNetworkImage(
                        imageUrl: _im1,
                        height: 140,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
            Expanded(
              child: ((index + 1) < imageCount)
                  ? InkWell(
                      onTap: () {
                        PhotoViewWidget.show(context, url: _im2);
                      },
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 7, left: 3.5),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: CachedNetworkImage(
                            imageUrl: _im2,
                            height: 140,
                            fit: BoxFit.fill,
                          ),
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
