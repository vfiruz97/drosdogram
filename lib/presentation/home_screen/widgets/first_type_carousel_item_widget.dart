import 'package:drosdogram/domain/objects/main_objects/slider.dart' as s;
import 'package:drosdogram/presentation/core/dialog_templates/ipoteka_create_form_widget.dart';
import 'package:drosdogram/presentation/core/widgets/green_button_widget.dart';
import 'package:flutter/material.dart';

import 'package:drosdogram/presentation/core/styles/style.dart';

class FirstTypeCarouselItemWidget extends StatelessWidget {
  final s.Slider slider;
  const FirstTypeCarouselItemWidget({
    Key? key,
    required this.slider,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(slider.image),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(slider.name, style: Style.carouselItemFirstStyle),
          ),
          Text(
            slider.content,
            textAlign: TextAlign.center,
            style: Style.carouselItemSecondStyle,
          ),
          if (slider.isPop == "1")
            GreenButtonWidget(
              label: slider.linkText,
              onTap: () => IpotekaCreateFormWidget.showIpotekaDialog(context),
            ),
        ],
      ),
    );
  }
}
