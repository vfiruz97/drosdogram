import 'package:drosdogram/presentation/core/widgets/address_widget.dart';
import 'package:drosdogram/presentation/core/widgets/cancel_btn_widget.dart';
import 'package:drosdogram/presentation/core/widgets/first_title_widget.dart';
import 'package:drosdogram/presentation/core/widgets/multi_files_upload_widget.dart';
import 'package:flutter/material.dart';

import 'package:drosdogram/presentation/core/styles/style.dart';
import 'package:drosdogram/presentation/core/widgets/app_bar_widget.dart';
import 'package:drosdogram/presentation/core/widgets/yellow_button_widget.dart';

class CreateOrderFormScreen extends StatelessWidget {
  const CreateOrderFormScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppBarWidget(
                title: 'Создание заявки',
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
                      const FirstTitleWidget(
                        title: "Создание заявки на\nЖК «Молоково»",
                      ),
                      const SizedBox(height: 12),
                      const AddressWidget(address: "Москва, ул. Макаренко, 68"),
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
                      const SizedBox(height: 20),
                      const MultiFilesUploadWidget(),
                      const SizedBox(height: 30),
                      Row(
                        children: [
                          const Expanded(child: CancelButtonWidget()),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
