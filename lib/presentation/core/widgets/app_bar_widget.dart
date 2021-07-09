import 'package:drosdogram/presentation/core/styles/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBarWidget extends StatelessWidget {
  final String title;
  final Function onTapBackIcon;
  final Widget rightWidget;

  const AppBarWidget({
    Key? key,
    this.title = 'Регистрация',
    required this.onTapBackIcon,
    this.rightWidget = const SizedBox(width: 30),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: Style.appBarBorderDecoration,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () => onTapBackIcon(),
            child: SvgPicture.asset("assets/images/arrow-left-black.svg"),
          ),
          Text(title, style: Style.appBarTitleStyle),
          rightWidget,
        ],
      ),
    );
  }
}
