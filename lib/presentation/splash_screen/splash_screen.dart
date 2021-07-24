import 'package:drosdogram/presentation/core/widgets/yellow_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:drosdogram/presentation/core/styles/style.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          padding:
              const EdgeInsets.only(left: 24, top: 76, right: 24, bottom: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SvgPicture.asset("assets/images/logo-long.svg"),
                  const SizedBox(height: 70),
                  const Text(
                    "100% гарантия\nзащиты контактов",
                    textAlign: TextAlign.center,
                    style: Style.splashScreenFirstStyle,
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Наши продажники общаются только внутри вашей сделки через SIP телефонию",
                    textAlign: TextAlign.center,
                    style: Style.splashScreenSecondStyle,
                  ),
                ],
              ),
              YellowButtonWidget(
                label: "Начать",
                isDisable: false,
                width: double.infinity,
                onTap: () =>
                    Navigator.pushReplacementNamed(context, '/register-first'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
