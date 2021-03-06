import 'package:drosdogram/aplication/screen_bottom_navigator/bottom_nav_bloc.dart';
import 'package:drosdogram/aplication/screen_bottom_navigator/screen_nav_list.dart';
import 'package:drosdogram/domain/objects/main_objects/order_data.dart';
import 'package:flutter/material.dart';

import 'package:drosdogram/domain/objects/main_objects/bobject.dart';
import 'package:drosdogram/presentation/core/config/config.dart';
import 'package:drosdogram/presentation/core/widgets/address_widget.dart';
import 'package:drosdogram/presentation/core/widgets/app_bar_widget.dart';
import 'package:drosdogram/presentation/core/widgets/first_title_widget.dart';
import 'package:drosdogram/presentation/core/widgets/outline_button_widget.dart';
import 'package:drosdogram/presentation/core/widgets/yellow_button_widget.dart';
import 'package:drosdogram/presentation/home_screen/widgets/double_photo_card_widget.dart';
import 'package:drosdogram/presentation/home_screen/widgets/status_info_card_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

class DisplayObjectHomeScreen extends StatelessWidget {
  const DisplayObjectHomeScreen({
    Key? key,
    required this.object,
  }) : super(key: key);

  final Bobject object;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Config.getScreenHeight(context),
      child: Stack(
        textDirection: TextDirection.ltr,
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 86,
                bottom: 9,
                left: 24,
                right: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FirstTitleWidget(title: object.name),
                  const SizedBox(height: 12),
                  AddressWidget(address: object.address),
                  const SizedBox(height: 20),
                  // SinglePhotoCardWidget(backImage: object.image),
                  // const SizedBox(height: 7),
                  DoublePhotoCardWidget(images: object.addImaage),
                  const SizedBox(height: 20),
                  if (object.status.isNotEmpty)
                    StatusInfoCardWidget(
                      status: "????????????",
                      value: object.status,
                    ),
                  if (object.type.isNotEmpty)
                    StatusInfoCardWidget(
                      status: "?????? ??????????????",
                      value: object.type,
                    ),
                  if (object.registration.isNotEmpty)
                    StatusInfoCardWidget(
                      status: "????????????????????",
                      value: object.registration,
                    ),
                  if (object.area.isNotEmpty)
                    StatusInfoCardWidget(
                      status: "??????????????",
                      value: object.area,
                    ),
                  if (object.price.isNotEmpty)
                    StatusInfoCardWidget(
                      status: "????????",
                      value: object.price,
                    ),
                  if (object.hypothec.isNotEmpty)
                    StatusInfoCardWidget(
                      status: "??????????????",
                      value: object.hypothec,
                    ),
                  const SizedBox(height: 10),
                  YellowButtonWidget(
                    label: '???????????? ????????????',
                    isDisable: false,
                    onTap: () => BlocProvider.of<BottomNavBloc>(context).add(
                      BottomNavEvent.changeTo(
                        scr: const HomeOrderFormScr(),
                        data: OrderData(bobject: object, isHypotec: false),
                      ),
                    ),
                    width: double.infinity,
                  ),
                  const SizedBox(height: 15),
                  OutlineButtonWidget(
                    label: '???????????? ???????????? ???? ??????????????',
                    onTap: () => BlocProvider.of<BottomNavBloc>(context).add(
                      BottomNavEvent.changeTo(
                        scr: const HomeOrderFormScr(),
                        data: OrderData(bobject: object, isHypotec: true),
                      ),
                    ),
                    width: double.infinity,
                    color: const Color.fromRGBO(33, 160, 56, 1),
                  ),
                  const SizedBox(height: 15),
                  OutlineButtonWidget(
                    label: '???????????????????? ?? ??????????????????',
                    onTap: () async {
                      try {
                        if (Uri.parse(object.link).isAbsolute) {
                          await launch(object.link);
                        }
                      } catch (_) {}
                    },
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
                title: object.name,
                onTapBackIcon: () => BlocProvider.of<BottomNavBloc>(context)
                    .add(const BottomNavEvent.changeTo(scr: HomeScr())),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
