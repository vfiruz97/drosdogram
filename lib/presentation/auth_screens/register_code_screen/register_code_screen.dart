import 'package:drosdogram/presentation/core/widgets/text_underlined_button_widget.dart';
import 'package:flutter/material.dart';

import 'package:drosdogram/presentation/core/styles/style.dart';
import 'package:drosdogram/presentation/core/widgets/app_bar_widget.dart';
import 'package:drosdogram/presentation/core/widgets/yellow_button_widget.dart';

class RegisterCodeScreen extends StatelessWidget {
  const RegisterCodeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppBarWidget(
              title: 'Введите код',
              onTapBackIcon: () => Navigator.pop(context),
            ),
            const SizedBox(height: 6),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'На номер ',
                        style: Style.registerScteenFirstStyle,
                        children: <TextSpan>[
                          TextSpan(
                            text: '+7 999 999-99-99',
                            style: Style.registerScteenFirstStyle
                                .copyWith(color: Colors.yellow),
                          ),
                          const TextSpan(
                            text: '\nотправлен код, введите его:',
                            style: Style.registerScteenFirstStyle,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 25),
                    TextFormField(
                      obscureText: true,
                      obscuringCharacter: '*',
                      style: Style.textFieldFirstStyle,
                      decoration: Style.splashScreenFirstDecorations(
                          hintText: '******'),
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
                      label: 'Не пришёл код',
                      onTap: () {},
                      color: const Color.fromRGBO(255, 78, 78, 1),
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
