import 'dart:ui';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie/core/common/utils/data_utils.dart';
import 'package:movie/core/cubit/app_cubit.dart';
import 'package:movie/core/data/model/language.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../core/bloc/page_command.dart';
import '../../../di/dependency_injection.dart';

part 'language_event.dart';
part 'language_state.dart';
part 'language_bloc.freezed.dart';

class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  LanguageBloc() : super(const LanguageState()) {
    on<_GetLanguages>((event, emit) async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String locale = prefs.getString('locale')!;
      emit(
        state.copyWith(
            languages: languages, locale: locale, selectedLocale: locale),
      );
    });

    on<_OnChangeLanguage>((event, emit) {
      emit(state.copyWith(selectedLocale: event.locale));
    });

    on<_OnSavedLanguage>((event, emit) async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('locale', state.selectedLocale);
      List<String> locale = state.selectedLocale.split('_');
      getIt.get<AppCubit>().changeLocale(Locale(locale[0], locale[1]));
    });
  }
}
