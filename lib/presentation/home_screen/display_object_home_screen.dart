import 'package:drosdogram/presentation/core/config/config.dart';
import 'package:drosdogram/presentation/core/widgets/app_bar_widget.dart';
import 'package:drosdogram/presentation/core/widgets/outline_button_widget.dart';
import 'package:drosdogram/presentation/core/widgets/yellow_button_widget.dart';
import 'package:flutter/material.dart';

import 'package:drosdogram/presentation/core/widgets/note_bottom_card_widget.dart';
import 'package:flutter_svg/svg.dart';

class DisplayObjectHomeScreen extends StatelessWidget {
  const DisplayObjectHomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          child: Stack(
            textDirection: TextDirection.ltr,
            children: [
              AppBarWidget(
                title: "ЖК «Молоково»",
                onTapBackIcon: () => Navigator.pop(context),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 86,
                  bottom: 189,
                  left: 24,
                  right: 24,
                ),
                child: Column(
                  children: [
                    const Text("ЖК «Молоково»"),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        SvgPicture.asset("assets/images/address.svg"),
                        const SizedBox(width: 5),
                        const Text("Москва, ул. Макаренко, 68"),
                      ],
                    ),
                    const SizedBox(height: 20),
                    YellowButtonWidget(
                      label: 'Подать заявку',
                      isDisable: false,
                      onTap: () {},
                      width: double.infinity,
                    ),
                    const SizedBox(height: 15),
                    OutlineButtonWidget(
                      label: 'Подать заявку на ипотеку',
                      onTap: () {},
                      width: double.infinity,
                      color: const Color.fromRGBO(33, 160, 56, 1),
                    ),
                    const SizedBox(height: 15),
                    OutlineButtonWidget(
                      label: 'Информация о комплексе',
                      onTap: () {},
                      width: double.infinity,
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                child: SizedBox(
                  width: Config.getScreenWidth(context),
                  child: const NoteBottomCardWidget(
                    backgroundColor: Color.fromRGBO(242, 242, 242, 1),
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
