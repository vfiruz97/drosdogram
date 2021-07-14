import 'package:drosdogram/presentation/core/styles/style.dart';
import 'package:drosdogram/presentation/core/widgets/circle_avatar_widget.dart';
import 'package:flutter/material.dart';

const String itemImage =
    "https://cdn.mskguru.ru/uploads/flats/3836/kvartry-v-zhk-dom-u-reki-1446624279,9474.jpg";

class ObjectInfoCardWidget extends StatelessWidget {
  const ObjectInfoCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: Container(
          height: 128,
          decoration: Style.objectInfoCardDecoration,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatarWidget(
                  imageUrl: itemImage,
                  radius: 30,
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Заявка пришла сегодня",
                        style: Style.objectInfoCardFirstStyle,
                      ),
                      const SizedBox(height: 4),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Дмитрий Дрозд",
                            style: Style.objectInfoCardSecondStyle,
                          ),
                          const SizedBox(width: 5),
                          Container(
                            width: 15,
                            height: 15,
                            decoration: Style.yellowCircleDecoration,
                            child: const Center(
                              child: Text('1',
                                  style: Style.objectInfoCardThirdStyle),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      const Expanded(
                        child: Text(
                          "Пришёл с циана, хочет трёшку и дворец в придачу",
                          overflow: TextOverflow.clip,
                          style: Style.objectInfoCardForthStyle,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
