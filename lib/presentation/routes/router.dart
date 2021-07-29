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
        return MaterialPageRoute(builder: (_) => const ScreenBottomNavigator());
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
