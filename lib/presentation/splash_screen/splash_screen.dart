import 'package:drosdogram/presentation/core/styles/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
              InkWell(
                onTap: () {},
                child: Container(
                  height: 40,
                  width: double.infinity,
                  alignment: Alignment.center,
                  decoration: Style.splashScreenFirstDecoration,
                  child:
                      const Text("Начать", style: Style.splashScreenThirdStyle),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
