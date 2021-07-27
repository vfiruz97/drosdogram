import 'package:drosdogram/aplication/profile/faq/faq_bloc.dart';
import 'package:drosdogram/domain/profile/faq.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:drosdogram/aplication/screen_bottom_navigator/bottom_nav_bloc.dart';
import 'package:drosdogram/aplication/screen_bottom_navigator/screen_nav_list.dart';
import 'package:drosdogram/presentation/core/config/config.dart';
import 'package:drosdogram/presentation/core/widgets/app_bar_widget.dart';
import 'package:drosdogram/presentation/splash_screen/load_widget.dart';

class FaqScreen extends StatelessWidget {
  const FaqScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FaqBloc, FaqState>(
      builder: (context, state) {
        if (state.getSuccess) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppBarWidget(
                  title: 'Вопрос-Ответ',
                  onTapBackIcon: () => BlocProvider.of<BottomNavBloc>(context)
                      .add(const BottomNavEvent.changeTo(scr: HomeScr())),
                ),
                const SizedBox(height: 6),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children:
                        state.faq.map((f) => FaqCardWidget(faq: f)).toList(),
                  ),
                ),
              ],
            ),
          );
        } else if (state.isGetting) {
          return const LoadWidget();
        }
        return const SizedBox();
      },
    );
  }
}

class FaqCardWidget extends StatefulWidget {
  const FaqCardWidget({
    Key? key,
    required this.faq,
  }) : super(key: key);

  final Faq faq;

  @override
  _FaqCardWidgetState createState() => _FaqCardWidgetState();
}

class _FaqCardWidgetState extends State<FaqCardWidget> {
  bool open = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => setState(() {
        open = !open;
      }),
      child: Container(
        width: Config.getScreenWidth(context),
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          border: Border.all(
              color: open ? Colors.yellow : Colors.black, width: 0.5),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              widget.faq.name,
              style: const TextStyle(
                fontFamily: "CeraRoundPro",
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            if (open) ...[
              const SizedBox(height: 16),
              Text(
                widget.faq.content,
                style: const TextStyle(
                  height: 1.3,
                  fontFamily: "CeraRoundPro",
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color.fromRGBO(0, 0, 0, 0.8),
                ),
              ),
            ]
          ],
        ),
      ),
    );
  }
}
