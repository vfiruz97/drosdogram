import 'package:drosdogram/presentation/core/styles/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddressWidget extends StatelessWidget {
  const AddressWidget({
    Key? key,
    required this.address,
  }) : super(key: key);

  final String address;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset("assets/images/address.svg"),
        const SizedBox(width: 5),
        Expanded(
          child: Text(address, style: Style.addressWidgetStyle),
        ),
      ],
    );
  }
}
