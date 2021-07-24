import 'package:drosdogram/aplication/auth/auth_bloc.dart';
import 'package:drosdogram/infrastructure/http_client/http_client.dart';
import 'package:drosdogram/presentation/splash_screen/load_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InitialSplashScreen extends StatelessWidget {
  const InitialSplashScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          unauthenticated: (_) {
            Navigator.pushNamed(context, '/start-splash');
          },
          authenticated: (s) {
            if (s.token.isValid()) http.token = s.token.getOrCrash();
            Navigator.pushNamed(context, '/screen-navigation');
          },
        );
      },
      child: const LoadWidget(),
    );
  }
}
