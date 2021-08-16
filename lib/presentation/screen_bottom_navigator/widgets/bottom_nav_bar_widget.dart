import 'package:drosdogram/aplication/screen_bottom_navigator/bottom_nav_bloc.dart';
import 'package:drosdogram/aplication/screen_bottom_navigator/screen_nav_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavBloc, BottomNavState>(
      builder: (context, state) {
        return Container(
          height: 75,
          padding: const EdgeInsets.only(bottom: 15),
          decoration: const BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 1),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.1),
                blurRadius: 15,
              )
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              createNavigationItem(
                iconImage: "nav-home",
                index: 0,
                curIndex: state.curScr.index,
                onTap: () {
                  if (context.read<BottomNavBloc>().state.curScr !=
                      const HomeScr()) {
                    context
                        .read<BottomNavBloc>()
                        .add(const BottomNavEvent.changeTo(scr: HomeScr()));
                  }
                },
              ),
              createNavigationItem(
                iconImage: "nav-request",
                index: 1,
                curIndex: state.curScr.index,
                onTap: () {
                  if (context.read<BottomNavBloc>().state.curScr !=
                      const RequestScr()) {
                    context
                        .read<BottomNavBloc>()
                        .add(const BottomNavEvent.changeTo(scr: RequestScr()));
                  }
                },
              ),
              createNavigationItem(
                iconImage: "nav-user",
                index: 2,
                curIndex: state.curScr.index,
                onTap: () {
                  if (context.read<BottomNavBloc>().state.curScr !=
                      const ProfileScr()) {
                    context
                        .read<BottomNavBloc>()
                        .add(const BottomNavEvent.changeTo(scr: ProfileScr()));
                  }
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

InkWell createNavigationItem({
  required String iconImage,
  required int index,
  required int curIndex,
  required Function onTap,
}) {
  return InkWell(
    onTap: () => onTap(),
    child: Container(
      padding: const EdgeInsets.symmetric(vertical: 4),
      decoration: index == curIndex
          ? const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Color.fromRGBO(255, 213, 0, 1),
                ),
              ),
            )
          : const BoxDecoration(),
      child: SvgPicture.asset(
        "assets/images/$iconImage.svg",
        height: 35,
        color: index == curIndex
            ? const Color.fromRGBO(255, 213, 0, 1)
            : const Color.fromRGBO(0, 0, 0, 0.5),
      ),
    ),
  );
}
