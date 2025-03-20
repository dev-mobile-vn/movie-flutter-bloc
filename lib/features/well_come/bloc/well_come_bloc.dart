import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie/core/bloc/page_command.dart';
import 'package:movie/core/common/constant/routers.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'well_come_event.dart';
part 'well_come_state.dart';
part 'well_come_bloc.freezed.dart';

class WellComeBloc extends Bloc<WellComeEvent, WellComeState> {
  WellComeBloc() : super(const WellComeState()) {
    on<_OnPageView>((event, emit) {
      emit(state.copyWith(position: event.position));
    });
    on<_OnGetStarted>((event, emit) async{
      final prefs = await SharedPreferences.getInstance();
      prefs.setBool('loggedIn', true);
      emit(state.copyWith(cmd: PageCommandNavigatorPage(page: mainRoute)));
    });
    on<_OnSignIn>((event, emit) async{
      emit(state.copyWith(cmd: PageCommandNavigatorPage(page: loginRoute)));
    });
  }
}
