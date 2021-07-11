import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:drosdogram/presentation/core/styles/style.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MultiFilesUploadWidget extends StatefulWidget {
  const MultiFilesUploadWidget({
    Key? key,
  }) : super(key: key);

  @override
  _MultiFilesUploadWidgetState createState() => _MultiFilesUploadWidgetState();
}

class _MultiFilesUploadWidgetState extends State<MultiFilesUploadWidget> {
  String countFiles = "Загрузите файлы";
  final List<File> files = [];

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      borderType: BorderType.RRect,
      dashPattern: const [5, 4],
      radius: const Radius.circular(8),
      color: const Color.fromRGBO(0, 0, 0, 0.25),
      child: Container(
        height: 48,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                countFiles,
                overflow: TextOverflow.ellipsis,
                style: Style.uploadWidgetStyle,
              ),
            ),
            InkWell(
              onTap: _uploadFiles,
              child: SvgPicture.asset("assets/images/upload.svg"),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _uploadFiles() async {
    final FilePickerResult? result =
        await FilePicker.platform.pickFiles(allowMultiple: true);

    if (result != null) {
      setState(() {
        countFiles = "Загрузите файлы";
        files.clear();
      });

      // ignore: avoid_function_literals_in_foreach_calls
      result.paths.forEach((path) {
        if (path != null && path.isNotEmpty) {
          try {
            final File file = File(path);
            files.add(file);
          } catch (e, s) {
            // ignore: avoid_print
            print(e);
            // ignore: avoid_print
            print(s);
          }
        }
      });
      setState(() {
        countFiles = "Выбрано ${files.length} файлов";
      });
    }
  }
}
