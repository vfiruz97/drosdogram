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
      height: 169,
      color: backgroundColor,
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Менеджер отдела продаж\nне видит номер клиента",
            style: Style.bottomNoteCardFirstStyle,
          ),
          SizedBox(height: 15),
          Text(
            "Наши продажники общаются только внутри\nвашей сделки через SIP телефонию",
            style: Style.bottomNoteCardSecondStyle,
          ),
        ],
      ),
    );
  }
}
