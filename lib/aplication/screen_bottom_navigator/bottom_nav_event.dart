part of 'bottom_nav_bloc.dart';

@freezed
class BottomNavEvent with _$BottomNavEvent {
  const factory BottomNavEvent.changeTo({
    required NavScreen scr,
    NavScreen? prevScr,
  }) = _ChangeTo;
}
