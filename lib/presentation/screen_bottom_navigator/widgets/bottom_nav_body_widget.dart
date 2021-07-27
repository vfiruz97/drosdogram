import 'package:drosdogram/aplication/objects/agent_request/agent_request_bloc.dart';
import 'package:drosdogram/aplication/objects/object/object_bloc.dart';
import 'package:drosdogram/aplication/objects/slider/slider_bloc.dart';
import 'package:drosdogram/aplication/profile/faq/faq_bloc.dart';
import 'package:drosdogram/aplication/profile/profile_bloc.dart';
import 'package:drosdogram/domain/objects/main_objects/bobject.dart';
import 'package:drosdogram/injection.dart';
import 'package:drosdogram/presentation/faq/faq_screen.dart';
import 'package:drosdogram/presentation/home_screen/display_object_home_screen.dart';
import 'package:drosdogram/presentation/home_screen/home_screen.dart';
import 'package:drosdogram/presentation/home_screen/orders/create_order_screen.dart';
import 'package:drosdogram/presentation/order_screens/order_list/order_list_screen.dart';
import 'package:drosdogram/presentation/profile_screen/profile_screen.dart';
import 'package:drosdogram/presentation/splash_screen/load_widget.dart';
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
            lazy: false,
            create: (context) =>
                getIt<ProfileBloc>()..add(const ProfileEvent.getUserInfo())),
        BlocProvider(
            lazy: false,
            create: (context) =>
                getIt<ObjectBloc>()..add(const ObjectEvent.getObjects())),
        BlocProvider(
            lazy: false,
            create: (context) => getIt<AgentRequestBloc>()
              ..add(const AgentRequestEvent.getAgentRequests())),
        BlocProvider(
            lazy: false,
            create: (context) =>
                getIt<SliderBloc>()..add(const SliderEvent.getSliders())),
        BlocProvider(
            lazy: true,
            create: (context) =>
                getIt<FaqBloc>()..add(const FaqEvent.getFaq())),
      ],
      child: BlocBuilder<BottomNavBloc, BottomNavState>(
        builder: (context, state) {
          switch (state.curScr) {
            case HomeScr():
              return const HomeScreen();
            case HomeDisplayObjectScr():
              if (state.data != null && state.data is Bobject) {
                return DisplayObjectHomeScreen(object: state.data as Bobject);
              }
              return const LoadWidget();
            case HomeOrderFormScr():
              if (state.data != null && state.data is Bobject) {
                return CreateOrderFormScreen(object: state.data as Bobject);
              }
              return const LoadWidget();
            case RequestScr():
              return const OrderListScreen();
            case ProfileScr():
              return const ProfileScreen();
            case FaqScr():
              return const FaqScreen();
            default:
              return const SizedBox();
          }
        },
      ),
    );
  }
}
