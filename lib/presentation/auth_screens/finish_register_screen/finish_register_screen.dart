import 'package:drosdogram/presentation/auth_screens/finish_register_screen/widgets/finish_regisster_screen_body_widget.dart';
import 'package:flutter/material.dart';

class FinishRegisterScreen extends StatelessWidget {
  const FinishRegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: FinishRegisterScreenBodyWidget(),
      ),
    );
  }
}
