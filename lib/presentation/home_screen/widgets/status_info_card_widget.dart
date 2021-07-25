import 'package:drosdogram/presentation/core/styles/style.dart';
import 'package:flutter/material.dart';

class StatusInfoCardWidget extends StatelessWidget {
  const StatusInfoCardWidget({
    Key? key,
    required this.status,
    required this.value,
  }) : super(key: key);

  final String status;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 4,
            ),
            decoration: Style.statusInfoCardDecoration,
            child: Text(status, style: Style.statusInfoCardFirstStyle),
          ),
          const SizedBox(width: 10),
          Expanded(child: Text(value, style: Style.statusInfoCardSecondStyle)),
        ],
      ),
    );
  }
}
