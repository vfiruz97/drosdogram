import 'package:drosdogram/presentation/core/widgets/green_button_widget.dart';
import 'package:flutter/material.dart';

import 'package:drosdogram/presentation/core/styles/style.dart';

class FirstTypeCarouselItemWidget extends StatelessWidget {
  final List<String> item;
  const FirstTypeCarouselItemWidget({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(item[2]),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(item[0], style: Style.carouselItemFirstStyle),
          ),
          Text(
            item[1],
            textAlign: TextAlign.center,
            style: Style.carouselItemSecondStyle,
          ),
          GreenButtonWidget(
            label: "Подать заявку на ипотеку",
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
