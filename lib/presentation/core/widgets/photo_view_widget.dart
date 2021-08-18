import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

import 'package:drosdogram/presentation/core/widgets/object_widgets.dart';
import 'package:photo_view/photo_view_gallery.dart';

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
                minScale: PhotoViewComputedScale.contained,
                maxScale: PhotoViewComputedScale.contained,
                backgroundDecoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                loadingBuilder: (context, _) {
                  return Center(
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: CircularProgressIndicatorWidget(),
                    ),
                  );
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

class GalleryPhotoiewWidget extends StatefulWidget {
  GalleryPhotoiewWidget({
    Key? key,
    required this.galleryImages,
    required this.initialIndex,
  })  : pageController = PageController(initialPage: initialIndex),
        super(key: key);

  final int initialIndex;
  final PageController pageController;
  final List<String> galleryImages;

  static Future show(
    BuildContext context, {
    required List<String> images,
    int initialIndex = 0,
  }) async {
    showDialog(
      context: context,
      barrierColor: const Color.fromRGBO(0, 0, 0, 0.7),
      builder: (context) {
        return GalleryPhotoiewWidget(
          galleryImages: images,
          initialIndex: initialIndex,
        );
      },
    );
  }

  @override
  _GalleryPhotoiewWidgetState createState() => _GalleryPhotoiewWidgetState();
}

class _GalleryPhotoiewWidgetState extends State<GalleryPhotoiewWidget> {
  late int currentIndex = widget.initialIndex;

  void onPageChanged(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.5),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              PhotoViewGallery.builder(
                scrollPhysics: const BouncingScrollPhysics(),
                builder: _buildItem,
                itemCount: widget.galleryImages.length,
                loadingBuilder: (context, _) =>
                    CircularProgressIndicatorWidget(),
                backgroundDecoration:
                    const BoxDecoration(color: Colors.transparent),
                pageController: widget.pageController,
                onPageChanged: onPageChanged,
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

  PhotoViewGalleryPageOptions _buildItem(BuildContext context, int index) {
    final String itemUrl = widget.galleryImages[index];
    return PhotoViewGalleryPageOptions(
      imageProvider: CachedNetworkImageProvider(itemUrl),
      initialScale: PhotoViewComputedScale.contained,
      minScale: PhotoViewComputedScale.contained,
      maxScale: PhotoViewComputedScale.contained,
      heroAttributes: PhotoViewHeroAttributes(tag: itemUrl),
    );
  }
}
