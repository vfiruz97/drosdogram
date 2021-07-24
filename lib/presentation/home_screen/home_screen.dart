import 'package:drosdogram/presentation/home_screen/widgets/object_card_widget.dart';
import 'package:flutter/material.dart';

import 'package:drosdogram/presentation/core/widgets/note_bottom_card_widget.dart';
import 'package:drosdogram/presentation/home_screen/widgets/carousel_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const int itemCount = 3;
    const String itemImage =
        "https://cdn.mskguru.ru/uploads/flats/3836/kvartry-v-zhk-dom-u-reki-1446624279,9474.jpg";

    return Column(
      children: [
        CarouselWidget(),
        const SizedBox(height: 16),
        Expanded(
          child: ListView.builder(
            itemCount: itemCount + 1,
            itemBuilder: (context, index) {
              if (index == itemCount) {
                return const NoteBottomCardWidget();
              }
              return ObectCardWidget(
                backImage: itemImage,
                label: "Дом отдыха «Ноунейм»",
                onTap: () => Navigator.pop(context),
              );
            },
          ),
        ),
      ],
    );
  }
}
