import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'main_event.dart';
part 'main_state.dart';
part 'main_bloc.freezed.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(MainState(pageController: PageController(initialPage: 0))) {
    on<_OnChangePage>((event, emit) {
      emit(state.copyWith(index: event.index));
    });
  }

  @override
  Future<void> close() {
    state.pageController.dispose();
    return super.close();
  }
}
