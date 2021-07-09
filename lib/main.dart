import 'package:drosdogram/presentation/home_screen/display_object_home_screen.dart';
import 'package:drosdogram/presentation/home_screen/home_screen.dart';
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
      //home: const FinishRegisterScreen(),
      //home: const ProfileScreen(),
      //home: const HomeScreen(),
      home: const DisplayObjectHomeScreen(),
    );
  }
}
