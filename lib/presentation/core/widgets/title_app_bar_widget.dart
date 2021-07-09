import 'package:drosdogram/presentation/core/styles/style.dart';
import 'package:flutter/material.dart';

class TitleAppBarWidget extends StatelessWidget {
  const TitleAppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: Style.appBarBorderDecoration,
      child: Row(
        children: const [
          Text('Завершение регистрации', style: Style.appBarTitleStyle),
        ],
      ),
    );
  }
}
