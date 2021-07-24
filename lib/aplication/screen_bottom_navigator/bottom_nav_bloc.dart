import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:drosdogram/aplication/screen_bottom_navigator/screen_nav_list.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_nav_event.dart';
part 'bottom_nav_state.dart';
part 'bottom_nav_bloc.freezed.dart';

class BottomNavBloc extends Bloc<BottomNavEvent, BottomNavState> {
  BottomNavBloc() : super(BottomNavState.initial());

  @override
  Stream<BottomNavState> mapEventToState(
    BottomNavEvent event,
  ) async* {
    yield* event.map(
      changeTo: (e) async* {
        yield state.copyWith(
          preScr: e.prevScr ?? state.curScr,
          curScr: e.scr,
        );
      },
    );
  }
}
