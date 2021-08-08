import 'package:drosdogram/aplication/screen_bottom_navigator/bottom_nav_bloc.dart';
import 'package:drosdogram/aplication/screen_bottom_navigator/screen_nav_list.dart';
import 'package:drosdogram/domain/auth/user.dart';
import 'package:drosdogram/presentation/auth_screens/finish_register_screen/finish_register_screen.dart';
import 'package:drosdogram/presentation/auth_screens/password_recovery/password_recovery_screen.dart';
import 'package:drosdogram/presentation/auth_screens/register_screen/register_code_screen.dart';
import 'package:drosdogram/presentation/auth_screens/register_screen/register_screen.dart';
import 'package:drosdogram/presentation/auth_screens/sign_in_screen/sign_in_screen.dart';
import 'package:drosdogram/presentation/screen_bottom_navigator/screen_bottom_navigator.dart';
import 'package:drosdogram/presentation/splash_screen/initial_splash_screen.dart';
import 'package:drosdogram/presentation/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const InitialSplashScreen());
      case '/start-splash':
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case '/register-first':
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
      case '/register-second':
        return MaterialPageRoute(
            builder: (_) => RegisterCodeScreen(
                  user: (args != null && args is User) ? args : User.empty(),
                ));
      case '/register-finish':
        return MaterialPageRoute(builder: (_) => const FinishRegisterScreen());
      case '/screen-navigation':
        return MaterialPageRoute(
            builder: (context) => WillPopScope(
                onWillPop: () async {
                  final NavScreen _backScreen;
                  switch (
                      BlocProvider.of<BottomNavBloc>(context).state.preScr) {
                    case HomeDisplayObjectScr():
                      _backScreen = const HomeScr();
                      break;
                    case HomeOrderFormScr():
                      _backScreen = const HomeScr();
                      break;
                    case RequestChatScr():
                      _backScreen = const RequestScr();
                      break;
                    default:
                      _backScreen = BlocProvider.of<BottomNavBloc>(context)
                              .state
                              .preScr ??
                          const HomeScr();
                  }
                  BlocProvider.of<BottomNavBloc>(context).add(
                    BottomNavEvent.changeTo(scr: _backScreen),
                  );
                  return false;
                },
                child: const ScreenBottomNavigator()));
      case '/sign-in':
        return MaterialPageRoute(builder: (_) => const SignInScreen());
      case '/password-recovery':
        return MaterialPageRoute(
            builder: (_) => const PasswordRecoveryScreen());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return const Scaffold(
        body: Center(
          child: Text(
            'ERROR SCREEN',
            style: TextStyle(color: Colors.red),
          ),
        ),
      );
    });
  }
}
