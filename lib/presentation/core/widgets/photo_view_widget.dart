import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

import 'package:drosdogram/presentation/core/widgets/object_widgets.dart';

class PhotoViewWidget extends StatelessWidget {
  const PhotoViewWidget({
    Key? key,
    required this.url,
  }) : super(key: key);

  final String url;

  static Future show(BuildContext context, {required String url}) async {
    showDialog(
      context: context,
      barrierColor: const Color.fromRGBO(0, 0, 0, 0.7),
      builder: (context) {
        return PhotoViewWidget(url: url);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.5),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              PhotoView(
                imageProvider: CachedNetworkImageProvider(url),
                minScale: PhotoViewComputedScale.contained * 0.8,
                maxScale: PhotoViewComputedScale.covered * 2,
                enableRotation: true,
                backgroundDecoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                loadingBuilder: (context, _) {
                  return CircularProgressIndicatorWidget();
                },
              ),
              Positioned(
                top: 10,
                right: 10,
                child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
