part of 'main_bloc.dart';

@freezed
class MainEvent with _$MainEvent {
  const factory MainEvent.onChangePage(int index) = _OnChangePage;
}

