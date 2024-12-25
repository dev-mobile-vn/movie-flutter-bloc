part of 'language_bloc.dart';

@freezed
class LanguageEvent with _$LanguageEvent {
  const factory LanguageEvent.getLanguages() = _GetLanguages;

  const factory LanguageEvent.onChangeLanguage(String code) = _OnChangeLanguage;

  const factory LanguageEvent.onSavedLanguage() = _OnSavedLanguage;

}