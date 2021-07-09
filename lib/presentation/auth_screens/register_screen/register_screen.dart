import 'package:drosdogram/presentation/core/widgets/text_underlined_button_widget.dart';
import 'package:flutter/material.dart';

import 'package:drosdogram/presentation/core/styles/style.dart';
import 'package:drosdogram/presentation/core/widgets/app_bar_widget.dart';
import 'package:drosdogram/presentation/core/widgets/yellow_button_widget.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppBarWidget(onTapBackIcon: () => Navigator.pop(context)),
            const SizedBox(height: 6),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Для регистрации введите\nваше ФИО и номер телефона",
                      textAlign: TextAlign.left,
                      style: Style.registerScteenFirstStyle,
                    ),
                    const SizedBox(height: 25),
                    TextFormField(
                      style: Style.textFieldFirstStyle,
                      decoration: Style.splashScreenFirstDecorations(),
                    ),
                    const SizedBox(height: 25),
                    TextFormField(
                      style: Style.textFieldFirstStyle,
                      decoration:
                          Style.splashScreenFirstDecorations(hintText: '+7'),
                    ),
                    const SizedBox(height: 25),
                    YellowButtonWidget(
                      label: "Вперёд",
                      isDisable: true,
                      onTap: () {},
                      width: double.infinity,
                    ),
                    const SizedBox(height: 25),
                    TextUnderlinedButtonWidget(
                      label: 'У меня уже есть профиль',
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
