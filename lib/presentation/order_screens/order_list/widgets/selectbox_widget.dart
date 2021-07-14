import 'package:drosdogram/presentation/core/styles/style.dart';
import 'package:flutter/material.dart';

class SelectboxWidget extends StatelessWidget {
  const SelectboxWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      items: <String>[
        'Все',
        'ЖК "Южный Парк"',
        'ЖК "Архитектор"',
        'ЖК "Cен-Тропе"',
      ].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value, style: Style.selectboxWidgetStyle),
        );
      }).toList(),
      value: 'Все',
      onChanged: (_) {},
      decoration: Style.selectboxDecoration,
    );
  }
}
