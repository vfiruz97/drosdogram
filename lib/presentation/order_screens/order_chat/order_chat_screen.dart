import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:drosdogram/presentation/core/config/config.dart';
import 'package:drosdogram/presentation/core/styles/style.dart';
import 'package:drosdogram/presentation/core/widgets/app_bar_widget.dart';
import 'package:drosdogram/presentation/core/widgets/cancel_btn_widget.dart';
import 'package:drosdogram/presentation/core/widgets/circle_avatar_widget.dart';

const String itemImage =
    "https://cdn.mskguru.ru/uploads/flats/3836/kvartry-v-zhk-dom-u-reki-1446624279,9474.jpg";

class OrderChatScreen extends StatelessWidget {
  const OrderChatScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBarWidget(
              title: 'Дмитрий Дрозд',
              onTapBackIcon: () => Navigator.pop(context),
              rightWidget: const CircleAvatarWidget(
                imageUrl: itemImage,
                radius: 18,
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 30, left: 24, right: 24, bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            width: Config.getScreenWidth(context),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                itemImage,
                                height: 220.0,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Positioned.fill(
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "ЖК «Молоково»",
                                    style: TextStyle(
                                      fontFamily: "Lato",
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 18,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(height: 2),
                                  Text(
                                    "Дмитрий Дрозд",
                                    style: TextStyle(
                                      fontFamily: "CeraRoundPro",
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 26,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "+7 (***) ***-22-32",
                                    style: TextStyle(
                                      fontFamily: "Lato",
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      CancelButtonWidget(
                        label: "Удалить заявку",
                        onTap: () => Navigator.pop(context),
                      ),
                      const SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          FirstMessageBubbleWidget(
                            isSender: false,
                            senderName: "Вы",
                            dateTime: "17:48",
                            message:
                                "Актуально ли, клиент не слился? Есть несколько свободных квартир, на 11 и 18 этажах. Лифт не работает, придется подниматься пешком, встреча в 18:00",
                          ),
                          SizedBox(height: 16),
                          FirstMessageBubbleWidget(
                            isSender: true,
                            senderName: "Михаил",
                            dateTime: "17:46",
                            message:
                                "Хорошо, он говорит, что время — деньги, а денег же у нас не предвидится))))",
                          ),
                          SizedBox(height: 16),
                          FirstMessageBubbleWidget(
                            isSender: true,
                            senderName: "Михаил",
                            dateTime: "17:46",
                            message: "Хорошо,",
                          ),
                          SizedBox(height: 16),
                          FirstMessageBubbleWidget(
                            isSender: true,
                            senderName: "Михаил",
                            dateTime: "17:46",
                            message: "Хорошо, он говорит,",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Stack(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.multiline,
                    minLines: 6,
                    maxLines: 10,
                    style: Style.textFieldFirstStyle,
                    decoration: Style.chatTextareaDecoratdion,
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SvgPicture.asset("assets/images/paperclip.svg"),
                        const SizedBox(width: 4),
                        SvgPicture.asset("assets/images/send-message.svg"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FirstMessageBubbleWidget extends StatelessWidget {
  const FirstMessageBubbleWidget({
    Key? key,
    required this.message,
    required this.senderName,
    required this.dateTime,
    required this.isSender,
  }) : super(key: key);

  final String message;
  final String senderName;
  final String dateTime;
  final bool isSender;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          isSender ? MainAxisAlignment.start : MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        if (isSender)
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: const CircleAvatarWidget(
              imageUrl: itemImage,
              radius: 14,
            ),
          ),
        Stack(
          children: [
            Container(
              constraints: BoxConstraints(
                maxWidth: Config.getBubbleMaxWidth(context),
                minWidth: 100,
              ),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: isSender
                    ? const Color.fromRGBO(0, 0, 0, 0.05)
                    : const Color.fromRGBO(255, 213, 0, 1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 17),
                child: Text(
                  message,
                  style: const TextStyle(
                    height: 1,
                    fontFamily: "CeraRoundPro",
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                    fontSize: 12,
                    color: Color.fromRGBO(0, 0, 0, 0.8),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 8,
              left: 8,
              child: Text(
                senderName,
                style: const TextStyle(
                  fontFamily: "CeraRoundPro",
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                  fontSize: 10,
                ),
              ),
            ),
            Positioned(
              top: 8,
              right: 8,
              child: Text(
                dateTime,
                style: const TextStyle(
                  fontFamily: "CeraRoundPro",
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                  fontSize: 10,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
