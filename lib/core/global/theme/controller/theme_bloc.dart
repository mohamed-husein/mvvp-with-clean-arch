// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';
// import 'package:flutter/material.dart';
// import 'package:starter_projects/core/global/theme/app_theme.dart';
// import 'package:starter_projects/core/local_data/shared_preferences_services.dart';
// import 'package:starter_projects/core/services/dependency_injection_services.dart';
// import 'package:starter_projects/core/utils/app_constants.dart';
//
// part 'theme_event.dart';
// part 'theme_state.dart';
//
// class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
//   ThemeData themeData;
//
//   ThemeBloc({required this.themeData})
//       : super(ThemeState(themeData: themeData)) {
//     on<ThemeChanged>((event, emit) async {
//       emit(ThemeState(
//         themeData: appThemeData[event.theme]!,
//       ));
//       await saveThemeAppSelected(event.theme);
//     });
//   }
//
//   saveThemeAppSelected(AppTheme appTheme) async {
//     await sl<SharedPreferencesServices>().saveData(
//       key: AppConstance.storedThemeApp,
//       value: appTheme.index,
//       dataType: DataType.int,
//     );
//   }
// }
