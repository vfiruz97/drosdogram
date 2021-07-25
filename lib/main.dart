import 'package:drosdogram/domain/auth/user.dart';
import 'package:drosdogram/injection.dart';
import 'package:drosdogram/presentation/auth_screens/finish_register_screen/finish_register_screen.dart';
import 'package:drosdogram/presentation/auth_screens/register_screen/register_code_screen.dart';
import 'package:drosdogram/presentation/auth_screens/register_screen/register_screen.dart';
import 'package:drosdogram/presentation/core/dialog_templates/dispaly_dialog_templates.dart';
import 'package:drosdogram/presentation/home_screen/home_screen.dart';
import 'package:drosdogram/presentation/home_screen/orders/create_order_screen.dart';
import 'package:drosdogram/presentation/order_screens/order_chat/order_chat_screen.dart';
import 'package:drosdogram/presentation/order_screens/order_list/order_list_screen.dart';
import 'package:drosdogram/presentation/profile_screen/profile_screen.dart';
import 'package:drosdogram/presentation/routes/router.dart';
import 'package:drosdogram/presentation/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'aplication/auth/auth_bloc.dart';
import 'aplication/auth/register/register_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.white));

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.checkAuthToken()),
        ),
        BlocProvider(create: (context) => getIt<RegisterBloc>()),
      ],
      child: MaterialApp(
        title: 'Drosdogram',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
        ),
        initialRoute: '/',
        onGenerateRoute: RouteGenerator.generateRoute,
        //home: const SplashScreen(),
        //home: const RegisterScreen(),
        //home: const RegisterCodeScreen(),
        //home: const FinishRegisterScreen(),
        //home: const ProfileScreen(),
        //home: const HomeScreen(),
        //home: const DisplayObjectHomeScreen(),
        //home: const DisplayDialogTemplates(),
        //home: const CreateOrderFormScreen(),
        //home: const OrderListScreen(),
        //home: const OrderChatScreen(),
        //home: const DisplayScreens(),
      ),
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
                builder: (context) => RegisterCodeScreen(
                  user: User.empty(),
                ),
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
          // TextButton(
          //   onPressed: () => Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //       builder: (context) => const DisplayObjectHomeScreen(),
          //     ),
          //   ),
          //   child: const Text('DisplayObjectHomeScreen'),
          // ),
          TextButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CreateOrderFormScreen(),
              ),
            ),
            child: const Text('CreateOrderFormScreen'),
          ),
          TextButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const OrderListScreen(),
              ),
            ),
            child: const Text('OrderListScreen'),
          ),
          TextButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const OrderChatScreen(),
              ),
            ),
            child: const Text('OrderChatScreen'),
          ),
        ],
      ),
    );
  }
}
