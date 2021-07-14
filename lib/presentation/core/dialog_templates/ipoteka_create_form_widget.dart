import 'package:drosdogram/presentation/core/styles/style.dart';
import 'package:drosdogram/presentation/core/widgets/cancel_btn_widget.dart';
import 'package:drosdogram/presentation/core/widgets/first_title_widget.dart';
import 'package:drosdogram/presentation/core/widgets/yellow_button_widget.dart';
import 'package:flutter/material.dart';

class IpotekaCreateFormWidget extends StatelessWidget {
  const IpotekaCreateFormWidget({
    Key? key,
  }) : super(key: key);

  static Future<void> showIpotekaDialog(BuildContext context) async {
    await showDialog(
      context: context,
      barrierDismissible: false,
      useSafeArea: false,
      barrierColor: const Color.fromRGBO(0, 0, 0, 0.7),
      builder: (context) {
        return const IpotekaCreateFormWidget();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 25,
                ),
                decoration: Style.dialogFirstDecoration,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const FirstTitleWidget(title: "Заявка на ипотеку"),
                    const SizedBox(height: 25),
                    TextFormField(
                      style: Style.textFieldFirstStyle,
                      decoration: Style.splashScreenFirstDecorations(
                          hintText: 'ФИО (клиента)*'),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      style: Style.textFieldFirstStyle,
                      decoration: Style.splashScreenFirstDecorations(
                          hintText: 'Телефон (клиента)*'),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      keyboardType: TextInputType.multiline,
                      minLines: 6,
                      maxLines: 10,
                      style: Style.textFieldFirstStyle,
                      decoration: Style.splashScreenFirstDecorations(
                          hintText: 'Запрос (клиента)*'),
                    ),
                    const SizedBox(height: 25),
                    Row(
                      children: [
                        Expanded(
                          child: CancelButtonWidget(
                            onTap: () => Navigator.pop(context),
                          ),
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          child: YellowButtonWidget(
                            label: "Отправить",
                            isDisable: false,
                            onTap: () {},
                            width: MediaQuery.of(context).size.width,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
