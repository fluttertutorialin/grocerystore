/*
   DEVELOPED BY: KAMLESH LAKHANI
   FOR THEME
*/

import 'package:flutter/material.dart';
import '../../import_package.dart';

class AppTheme {
  const AppTheme._();

  static ThemeData get theme {
    return ThemeData(
        brightness: Brightness.light,
        primaryColor: AppColors.primaryColor,
        accentColor: AppColors.primaryColor,
        buttonColor: AppColors.primaryColor,
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: const AppBarTheme(color: AppColors.primaryColor),

        textButtonTheme: TextButtonThemeData(
            style: ButtonStyle(
                padding:
                    MaterialStateProperty.resolveWith((_) => EdgeInsets.zero),
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.white.withOpacity(.14);
                    }
                    return null;
                  },
                ),
                textStyle: MaterialStateProperty.resolveWith<TextStyle>(
                    (_) => AppTextStyle.buttonTextStyle),
                shape: MaterialStateProperty.resolveWith<RoundedRectangleBorder>(
                    (states) =>
                        RoundedRectangleBorder(borderRadius: 10.borderRadius)),
                backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.disabled)) {
                    return AppColors.doveGray;
                  }
                  return null;
                }))),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
                padding: MaterialStateProperty.resolveWith(
                  (_) => EdgeInsets.zero,
                ),
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.white.withOpacity(.14);
                    }

                    return null;
                  },
                ),
                textStyle: MaterialStateProperty.resolveWith<TextStyle>(
                    (_) => AppTextStyle.buttonTextStyle),
                shape: MaterialStateProperty.resolveWith<RoundedRectangleBorder>((states) =>
                    RoundedRectangleBorder(borderRadius: 10.borderRadius)))),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(elevation: 4, backgroundColor: AppColors.primaryColor),
        textTheme: TextTheme(subtitle1: AppTextStyle.regularStyle.copyWith(color: AppColors.mineShaft, fontSize: Dimens.fontSize14)),
        inputDecorationTheme: InputDecorationTheme(prefixStyle: AppTextStyle.textFieldStyle, hintStyle: AppTextStyle.textFieldStyle, labelStyle: AppTextStyle.textFieldStyle),
        cardTheme: CardTheme(color: Colors.white.withOpacity(0.85), shape: RoundedRectangleBorder(borderRadius: 10.borderRadius)),
        dialogTheme: DialogTheme(backgroundColor: Colors.white, shape: RoundedRectangleBorder(borderRadius: 20.borderRadius)),
        bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(23.r), topRight: Radius.circular(23.r)))));
  }
}
