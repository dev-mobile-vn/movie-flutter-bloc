part of 'well_come_bloc.dart';

@freezed
class WellComeEvent with _$WellComeEvent {
  const factory WellComeEvent.onInit() = _OnInit;
  const factory WellComeEvent.onPageView(int position) = _OnPageView;
  const factory WellComeEvent.onGetStarted() = _OnGetStarted;
  const factory WellComeEvent.onSignIn() = _OnSignIn;
}
