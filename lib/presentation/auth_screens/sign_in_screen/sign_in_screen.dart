import 'package:drosdogram/aplication/auth/sign-in-form/sign_in_form_bloc.dart';
import 'package:drosdogram/injection.dart';
import 'package:drosdogram/presentation/auth_screens/sign_in_screen/body/body.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignInFormBloc>(),
      child: const Scaffold(
        body: SafeArea(
          child: BodyWidget(),
        ),
      ),
    );
  }
}
