import 'package:drosdogram/presentation/core/dialog_templates/ipoteka_create_form_widget.dart';
import 'package:drosdogram/presentation/core/widgets/first_title_widget.dart';
import 'package:drosdogram/presentation/core/widgets/address_widget.dart';
import 'package:drosdogram/presentation/home_screen/widgets/double_photo_card_widget.dart';
import 'package:drosdogram/presentation/home_screen/widgets/single_photo_card_widget.dart';
import 'package:drosdogram/presentation/home_screen/widgets/status_info_card_widget.dart';
import 'package:flutter/material.dart';

import 'package:drosdogram/presentation/core/config/config.dart';
import 'package:drosdogram/presentation/core/widgets/app_bar_widget.dart';
import 'package:drosdogram/presentation/core/widgets/note_bottom_card_widget.dart';
import 'package:drosdogram/presentation/core/widgets/outline_button_widget.dart';
import 'package:drosdogram/presentation/core/widgets/yellow_button_widget.dart';

class  DisplayObjectHomeScreen extends StatelessWidget {
  const DisplayObjectHomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String itemImage =
        "https://cdn.mskguru.ru/uploads/flats/3836/kvartry-v-zhk-dom-u-reki-1446624279,9474.jpg";

    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: Config.getScreenHeight(context),
          child: Stack(
            textDirection: TextDirection.ltr,
            children: [
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 86,
                    bottom: 189,
                    left: 24,
                    right: 24,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const FirstTitleWidget(title: "ЖК «Молоково»"),
                      const SizedBox(height: 12),
                      const AddressWidget(address: "Москва, ул. Макаренко, 68"),
                      const SizedBox(height: 20),
                      const SinglePhotoCardWidget(backImage: itemImage),
                      const SizedBox(height: 7),
                      const DoublePhotoCardWidget(
                        firstImageUrl: itemImage,
                        secondImageUrl: itemImage,
                      ),
                      const SizedBox(height: 20),
                      const StatusInfoCardWidget(
                        status: "Статус",
                        value: "Сдан",
                      ),
                      const StatusInfoCardWidget(
                        status: "Оформление",
                        value: "Тип оформление",
                      ),
                      const StatusInfoCardWidget(
                        status: "Площади",
                        value: "от 20 до 140 м2",
                      ),
                      const StatusInfoCardWidget(
                        status: "Ипотека",
                        value: "Сбербанк",
                      ),
                      const SizedBox(height: 10),
                      YellowButtonWidget(
                        label: 'Подать заявку',
                        isDisable: false,
                        onTap: () {},
                        width: double.infinity,
                      ),
                      const SizedBox(height: 15),
                      OutlineButtonWidget(
                        label: 'Подать заявку на ипотеку',
                        onTap: () => IpotekaCreateFormWidget.showIpotekaDialog(context),
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
              ),
              Positioned(
                top: 0,
                child: SizedBox(
                  width: Config.getScreenWidth(context),
                  child: AppBarWidget(
                    title: "ЖК «Молоково»",
                    onTapBackIcon: () => Navigator.pop(context),
                  ),
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
