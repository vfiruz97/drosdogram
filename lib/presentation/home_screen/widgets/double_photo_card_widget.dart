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

    for (var i = 0; i < imageCount / 2; i++) {
      final int _im1Index = index;
      final int _im2Index = index + 1;
      _sliders.add(
        Row(
          children: [
            if (index < imageCount)
              Expanded(
                child: InkWell(
                  onTap: () => GalleryPhotoiewWidget.show(
                    context,
                    images: images,
                    initialIndex: _im1Index,
                  ),
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 7, right: 3.5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: CachedNetworkImage(
                        imageUrl: images[index],
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
                      onTap: () => GalleryPhotoiewWidget.show(
                        context,
                        images: images,
                        initialIndex: _im2Index,
                      ),
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 7, left: 3.5),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: CachedNetworkImage(
                            imageUrl: images[index + 1],
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
