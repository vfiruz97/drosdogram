import 'package:drosdogram/presentation/auth_screens/finish_register_screen/finish_register_screen.dart';
import 'package:drosdogram/presentation/auth_screens/register_code_screen/register_code_screen.dart';
import 'package:drosdogram/presentation/auth_screens/register_screen/register_screen.dart';
import 'package:drosdogram/presentation/core/dialog_templates/dispaly_dialog_templates.dart';
import 'package:drosdogram/presentation/home_screen/display_object_home_screen.dart';
import 'package:drosdogram/presentation/home_screen/home_screen.dart';
import 'package:drosdogram/presentation/home_screen/orders/create_order_screen.dart';
import 'package:drosdogram/presentation/profile_screen/profile_screen.dart';
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
      //home: const FinishRegisterScreen(),
      //home: const ProfileScreen(),
      //home: const HomeScreen(),
      //home: const DisplayObjectHomeScreen(),
      //home: const DisplayDialogTemplates(),
      home: const CreateOrderFormScreen(),
      //home: const DisplayScreens(),
    );
  }
}

class DisplayScreens extends StatelessWidget {
  const DisplayScreens({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DisplayDialogTemplates(),
              ),
            ),
            child: const Text('DisplayDialogTemplates'),
          ),
          TextButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SplashScreen(),
              ),
            ),
            child: const Text('SplashScreen'),
          ),
          TextButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const RegisterScreen(),
              ),
            ),
            child: const Text('RegisterScreen'),
          ),
          TextButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const RegisterCodeScreen(),
              ),
            ),
            child: const Text('RegisterCodeScreen'),
          ),
          TextButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const FinishRegisterScreen(),
              ),
            ),
            child: const Text('FinishRegisterScreen'),
          ),
          TextButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProfileScreen(),
              ),
            ),
            child: const Text('ProfileScreen'),
          ),
          TextButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ),
            ),
            child: const Text('HomeScreen'),
          ),
          TextButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DisplayObjectHomeScreen(),
              ),
            ),
            child: const Text('DisplayObjectHomeScreen'),
          ),
          TextButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CreateOrderFormScreen(),
              ),
            ),
            child: const Text('CreateOrderFormScreen'),
          ),
        ],
      ),
    );
  }
}
