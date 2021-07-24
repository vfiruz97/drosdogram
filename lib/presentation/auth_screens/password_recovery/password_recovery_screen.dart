import 'package:drosdogram/aplication/auth/password_recovery/password_recovery_bloc.dart';

import 'package:drosdogram/injection.dart';
import 'package:drosdogram/presentation/auth_screens/password_recovery/body/body.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class PasswordRecoveryScreen extends StatelessWidget {
  const PasswordRecoveryScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PasswordRecoveryBloc>(),
      child: const Scaffold(
        body: SafeArea(
          child: PasswordRecoveyBodyWidget(),
        ),
      ),
    );
  }
}
