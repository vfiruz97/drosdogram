import 'package:drosdogram/presentation/core/styles/style.dart';
import 'package:flutter/material.dart';

class FirstTitleWidget extends StatelessWidget {
  const FirstTitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title, style: Style.titleWidgetStyle);
  }
}
