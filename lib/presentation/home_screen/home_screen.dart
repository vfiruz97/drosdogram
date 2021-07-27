import 'package:drosdogram/aplication/objects/object/object_bloc.dart';
import 'package:drosdogram/aplication/screen_bottom_navigator/bottom_nav_bloc.dart';
import 'package:drosdogram/aplication/screen_bottom_navigator/screen_nav_list.dart';
import 'package:drosdogram/presentation/home_screen/widgets/object_card_widget.dart';
import 'package:drosdogram/presentation/splash_screen/load_widget.dart';
import 'package:flutter/material.dart';

import 'package:drosdogram/presentation/core/widgets/note_bottom_card_widget.dart';
import 'package:drosdogram/presentation/home_screen/widgets/carousel_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ObjectBloc, ObjectState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        final _itemCount = state.objects.length;
        return Column(
          children: [
            const CarouselWidget(),
            const SizedBox(height: 16),
            Expanded(
              child: state.isGetting
                  ? const LoadWidget()
                  : ListView.builder(
                      itemCount: state.objects.length + 1,
                      itemBuilder: (context, index) {
                        if (index == _itemCount) {
                          return const NoteBottomCardWidget();
                        }
                        return ObectCardWidget(
                          backImage: state.objects[index].image,
                          label: state.objects[index].name,
                          onTap: () => BlocProvider.of<BottomNavBloc>(context)
                              .add(BottomNavEvent.changeTo(
                            scr: const HomeDisplayObjectScr(),
                            data: state.objects[index],
                          )),
                        );
                      },
                    ),
            ),
          ],
        );
      },
    );
  }
}
