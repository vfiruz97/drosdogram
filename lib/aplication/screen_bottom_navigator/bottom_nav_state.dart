part of 'bottom_nav_bloc.dart';

@freezed
class BottomNavState with _$BottomNavState {
  const factory BottomNavState({
    required NavScreen curScr,
    NavScreen? preScr,
    @Default(null) dynamic data,
  }) = _BottomNavState;

  factory BottomNavState.initial() => const BottomNavState(
        curScr: HomeScr(),
      );
}
