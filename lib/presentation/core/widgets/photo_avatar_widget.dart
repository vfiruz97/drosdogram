import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:drosdogram/aplication/profile/profile_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import 'package:drosdogram/presentation/core/styles/style.dart';
import 'package:image_picker/image_picker.dart';

class PhotoAvatarWidget extends StatefulWidget {
  const PhotoAvatarWidget({
    Key? key,
    required this.imageSrc,
  }) : super(key: key);

  final String? imageSrc;

  @override
  _PhotoAvatarWidgetState createState() => _PhotoAvatarWidgetState();
}

class _PhotoAvatarWidgetState extends State<PhotoAvatarWidget> {
  XFile? _imageFile;

  Future<void> _imgFromGallery() async {
    try {
      final value = await ImagePicker().pickImage(source: ImageSource.gallery);

      if (value != null) {
        BlocProvider.of<ProfileBloc>(context)
            .add(ProfileEvent.changeImage(value.path));
        setState(() {
          _imageFile = value;
        });
      }
    } catch (e) {
      setState(() => _imageFile = null);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 150,
          width: 150,
          decoration: Style.photoAvatarFirstDecoration,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(100)),
            width: 100,
            height: 100,
            child: (_imageFile != null)
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(100.0),
                    child: Image.file(
                      File(_imageFile!.path),
                      fit: BoxFit.fill,
                    ),
                  )
                : Icon(Icons.camera_alt, color: Colors.grey[800]),
          ),
        ),
        if (widget.imageSrc != null && _imageFile == null)
          Container(
            height: 150,
            width: 150,
            decoration: Style.photoAvatarFirstDecoration,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(100)),
              width: 100,
              height: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: CachedNetworkImage(
                  imageUrl: widget.imageSrc ??
                      'https://drosdogram.pixelation.ru/uploads/slider/1d2631340cf9eb0b.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        Positioned(
          bottom: 0,
          child: InkWell(
            onTap: _imgFromGallery,
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
