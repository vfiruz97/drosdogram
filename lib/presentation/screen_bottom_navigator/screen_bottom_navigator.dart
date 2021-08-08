import 'package:drosdogram/aplication/screen_bottom_navigator/screen_nav_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import 'package:drosdogram/aplication/screen_bottom_navigator/bottom_nav_bloc.dart';
import 'package:drosdogram/presentation/screen_bottom_navigator/widgets/bottom_nav_bar_widget.dart';
import 'package:drosdogram/presentation/screen_bottom_navigator/widgets/bottom_nav_body_widget.dart';

class ScreenBottomNavigator extends StatelessWidget {
  const ScreenBottomNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(child: BottomNavBodyWidget()),
      floatingActionButton: BlocBuilder<BottomNavBloc, BottomNavState>(
        builder: (context, state) {
          if (state.curScr is RequestChatScr ||
              state.curScr is HomeOrderFormScr) {
            return const SizedBox();
          }
          return FloatingActionButton(
            onPressed: () => BlocProvider.of<BottomNavBloc>(context)
                .add(const BottomNavEvent.changeTo(scr: FaqScr())),
            backgroundColor: const Color.fromRGBO(255, 213, 0, 1),
            child: SvgPicture.asset("assets/images/support.svg"),
          );
        },
      ),
      bottomNavigationBar: const BottomNavBarWidget(),
    );
  }
}
