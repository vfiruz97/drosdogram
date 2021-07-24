import 'package:drosdogram/aplication/profile/profile_bloc.dart';
import 'package:drosdogram/injection.dart';
import 'package:drosdogram/presentation/home_screen/home_screen.dart';
import 'package:drosdogram/presentation/order_screens/order_list/order_list_screen.dart';
import 'package:drosdogram/presentation/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:drosdogram/aplication/screen_bottom_navigator/bottom_nav_bloc.dart';
import 'package:drosdogram/aplication/screen_bottom_navigator/screen_nav_list.dart';

class BottomNavBodyWidget extends StatelessWidget {
  const BottomNavBodyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                getIt<ProfileBloc>()..add(const ProfileEvent.getUserInfo())),
      ],
      child: BlocBuilder<BottomNavBloc, BottomNavState>(
        builder: (context, state) {
          switch (state.curScr) {
            case HomeScr():
              return const HomeScreen();
            case RequestScr():
              return const OrderListScreen();
            case ProfileScr():
              return const ProfileScreen();
            default:
              return const SizedBox();
          }
        },
      ),
    );
  }
}
