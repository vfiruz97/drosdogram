import 'package:drosdogram/injection.dart';
import 'package:drosdogram/presentation/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'aplication/auth/auth_bloc.dart';
import 'aplication/auth/register/register_bloc.dart';
import 'aplication/profile/profile_bloc.dart';
import 'aplication/screen_bottom_navigator/bottom_nav_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.white));

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          lazy: false,
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.checkAuthToken()),
        ),
        BlocProvider(lazy: false, create: (context) => getIt<ProfileBloc>()),
        BlocProvider(create: (context) => getIt<RegisterBloc>()),
        BlocProvider(create: (context) => BottomNavBloc()),
      ],
      child: MaterialApp(
        title: 'Drosdogram',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
        ),
        initialRoute: '/',
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}
