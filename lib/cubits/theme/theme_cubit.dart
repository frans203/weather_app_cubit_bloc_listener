import "package:equatable/equatable.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:weather_app/constants/constants.dart";

part "theme_state.dart";

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeState.initial());

  void setTheme({required double currentTemp}) {
    if (currentTemp > kWarmOrNot) {
      emit(state.copyWith(appTheme: AppTheme.LIGHT));
    } else {
      emit(state.copyWith(appTheme: AppTheme.DARK));
    }
  }
}
