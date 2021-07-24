import 'package:drosdogram/presentation/core/dialog_templates/agency_create_form_widget.dart';
import 'package:drosdogram/presentation/core/widgets/text_underlined_button_widget.dart';
import 'package:drosdogram/presentation/core/widgets/title_app_bar_widget.dart';
import 'package:flutter/material.dart';

import 'package:drosdogram/presentation/core/styles/style.dart';
import 'package:drosdogram/presentation/core/widgets/yellow_button_widget.dart';

class FinishRegisterScreen extends StatelessWidget {
  const FinishRegisterScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const TitleAppBarWidget(
              title: 'Завершение регистрации',
            ),
            const SizedBox(height: 6),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // PhotoAvatarWidget(
                    //   imageSrc: '',
                    // ),
                    const SizedBox(height: 35),
                    TextFormField(
                      style: Style.textFieldFirstStyle,
                      decoration:
                          Style.splashScreenFirstDecorations(hintText: 'ФИО*'),
                    ),
                    const SizedBox(height: 25),
                    TextFormField(
                      style: Style.textFieldFirstStyle,
                      decoration: Style.splashScreenFirstDecorations(
                          hintText: 'Название агентства*'),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          "Не нашли своего? ",
                          style: Style.underlinedTextStyle,
                        ),
                        TextUnderlinedButtonWidget(
                          label: 'Зарегистрировать агенство',
                          onTap: () =>
                              AgencyCreateFormWidget.showAgencyDialog(context),
                          color: Colors.black,
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),
                    TextFormField(
                      initialValue: "+7 999 999-99-99*",
                      style: Style.textFieldFirstStyle,
                      decoration:
                          Style.splashScreenFirstDecorations(hintText: '+7'),
                    ),
                    const SizedBox(height: 25),
                    TextFormField(
                      style: Style.textFieldFirstStyle,
                      decoration: Style.splashScreenFirstDecorations(
                          hintText: 'example@blank.com'),
                    ),
                    const SizedBox(height: 25),
                    YellowButtonWidget(
                      label: "Сохранить",
                      isDisable: false,
                      onTap: () {},
                      width: double.infinity,
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
