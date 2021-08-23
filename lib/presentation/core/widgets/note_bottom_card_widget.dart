import 'package:drosdogram/presentation/core/styles/style.dart';
import 'package:flutter/material.dart';

class NoteBottomCardWidget extends StatelessWidget {
  final Color backgroundColor;
  const NoteBottomCardWidget({
    Key? key,
    this.backgroundColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      color: backgroundColor,
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Менеджеры отдела продаж общается через SIP-телефонию.",
            style: Style.bottomNoteCardFirstStyle,
          ),
          SizedBox(height: 15),
          Expanded(
            child: Text(
              "Наши специалисты не видят номера клиента.",
              style: Style.bottomNoteCardSecondStyle,
            ),
          ),
        ],
      ),
    );
  }
}
