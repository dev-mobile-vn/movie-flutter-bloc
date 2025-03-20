part of 'main_bloc.dart';

@freezed
class MainState with _$MainState {
  const MainState._();
  const factory MainState({
    @Default(0) int index,
    required PageController pageController,
  }) = _MainState;
}
