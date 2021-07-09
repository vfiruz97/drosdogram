import 'package:flutter/material.dart';

import 'package:drosdogram/presentation/core/styles/style.dart';

class TitleAppBarWidget extends StatelessWidget {
  final String title;
  const TitleAppBarWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: Style.appBarBorderDecoration,
      child: Row(
        children: [
          Text(title, style: Style.appBarTitleStyle),
        ],
      ),
    );
  }
}
