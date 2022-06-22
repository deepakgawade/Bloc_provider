part of 'switch_cubit.dart';

class SwitchState {
   bool isDarkThemeOn;
  ThemeData? theme;
  SwitchState({required this.isDarkThemeOn}) {
    if (isDarkThemeOn) {
      theme = appThemeData[AppTheme.DarkAppTheme];
    } else {
      theme = appThemeData[AppTheme.LightAppTheme];
    }
  }

  SwitchState copyWith({required bool changeState}) {
    return SwitchState(isDarkThemeOn: changeState);
  }
}