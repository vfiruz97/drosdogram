import 'package:drosdogram/presentation/auth_screens/finish_register_screen/finish_register_screen.dart';
import 'package:drosdogram/presentation/auth_screens/register_code_screen/register_code_screen.dart';
import 'package:drosdogram/presentation/auth_screens/register_screen/register_screen.dart';
import 'package:drosdogram/presentation/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.white));

    return MaterialApp(
      title: 'Drosdogram',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      //home: const SplashScreen(),
      //home: const RegisterScreen(),
      //home: const RegisterCodeScreen(),
      home: const FinishRegisterScreen(),
    );
  }
}
