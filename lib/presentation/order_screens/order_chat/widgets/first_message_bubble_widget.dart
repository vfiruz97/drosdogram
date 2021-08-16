import 'package:cached_network_image/cached_network_image.dart';
import 'package:drosdogram/presentation/core/styles/style.dart';
import 'package:drosdogram/presentation/core/widgets/photo_view_widget.dart';
import 'package:drosdogram/presentation/core/widgets/play_audio_widget.dart';
import 'package:flutter/material.dart';

import 'package:drosdogram/domain/objects/main_objects/message.dart';
import 'package:drosdogram/presentation/core/config/config.dart';
import 'package:drosdogram/presentation/core/widgets/circle_avatar_widget.dart';

class FirstMessageBubbleWidget extends StatelessWidget {
  const FirstMessageBubbleWidget({
    Key? key,
    required this.message,
  }) : super(key: key);

  final Message message;

  @override
  Widget build(BuildContext context) {
    final bool isMyMessage =
        message.ava.isEmpty && message.messageClass.isEmpty;
    return Row(
      mainAxisAlignment:
          isMyMessage ? MainAxisAlignment.end : MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        if (!isMyMessage && message.ava.isNotEmpty)
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: CircleAvatarWidget(
              imageUrl: message.ava,
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
              decoration: Style.chatBubbleDecoration(isMyMessage: isMyMessage),
              child: Padding(
                padding: const EdgeInsets.only(top: 17),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (message.message.isNotEmpty)
                      Text(message.message, style: Style.chatBubbleFirstStyle),
                    if (message.image.isNotEmpty)
                      InkWell(
                        onTap: () => message.image.isNotEmpty
                            ? PhotoViewWidget.show(context, url: message.image)
                            : null,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: CachedNetworkImage(
                            imageUrl: message.image,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    if (message.isCall == "1")
                      PlayAudio(mp3Url: message.callId),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 8,
              left: 8,
              child: Text(message.name, style: Style.chatBubbleSecondStyle),
            ),
            Positioned(
              top: 8,
              right: 8,
              child: Text(message.published, style: Style.chatBubbleThirdStyle),
            ),
          ],
        ),
      ],
    );
  }
}
