import 'package:flutter/material.dart';
import '../../../utils/app_fonts.dart';
import '../../../utils/app_sizes.dart';
import '../theme_color/theme_color_dark.dart';

ThemeData get getThemeDataDark => ThemeData(
      primaryColor: ThemeColorDark.primaryColor,
      brightness: Brightness.dark,
      fontFamily: "Micross",
      disabledColor: ThemeColorDark.disableColor,
      errorColor: ThemeColorDark.errorColor,
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: ThemeColorDark.primaryColor,
      ),
      appBarTheme: const AppBarTheme(
        // backgroundColor: ThemeColorDark.appBarColor,
        elevation: 0,
        // titleTextStyle: TextStyle(
        //   color: ThemeColorDark.appBarTitleColor,
        //   fontFamily: AppFonts.fontFamilyEnglish,
        //   fontWeight: AppFonts.semiBold,
        //   fontSize: AppSizes.p5,
        // ),
      ),

      /// TextFormField
      inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(AppSizes.br30)),
          fillColor: ThemeColorDark.fillColorTextFormField,
          border: OutlineInputBorder(
              borderSide: BorderSide(
                  width: AppSizes.bs0_5,
                  color: ThemeColorDark.focusBorderTextField),
              borderRadius: BorderRadius.circular(AppSizes.br30)),
          errorStyle: TextStyle(
            color: ThemeColorDark.validationTextFieldColor,
            fontSize: AppSizes.fs16,
            fontWeight: AppFonts.regular,
            fontFamily: AppFonts.fontFamily,
          ),
          disabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(AppSizes.br30))),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: ThemeColorDark.primaryColor),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(AppSizes.br25))),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(ThemeColorDark.primaryColor),
            overlayColor: MaterialStateProperty.all<Color>(
                ThemeColorDark.overLayElevatedButtonColor),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSizes.br25),
            ))),
      ),

      // textTheme: const TextTheme(
      //   bodyText1: TextStyle(
      //     color: Colors.white,
      //   ),
      // ),
      textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.br40),
        )),
        overlayColor: MaterialStateProperty.all<Color>(
          Colors.transparent,
        ),
      )),
      textTheme: getTextTheme(),
    );

getTextTheme() => TextTheme(
      ///  For (Text in TextFormField)
      displaySmall: TextStyle(
        color: ThemeColorDark.textStyleTextFormFieldColor,
        fontSize: AppSizes.fs18,
        fontWeight: AppFonts.regular,
        fontFamily: AppFonts.fontFamily,
      ),

      /// Fot Text Button
      labelSmall: TextStyle(
        color: ThemeColorDark.primaryColor,
        fontFamily: AppFonts.fontFamily,
        fontWeight: AppFonts.regular,
        fontSize: AppSizes.fs16,
      ),

      labelMedium: TextStyle(
        color: ThemeColorDark.labelMediumColor,
        fontFamily: AppFonts.fontFamily,
        fontWeight: AppFonts.regular,
        fontSize: AppSizes.fs16,
      ),

      /// hint text in text Form Field
      labelLarge: TextStyle(
        color: ThemeColorDark.hintTextFieldColor,
        fontSize: AppSizes.fs16,
        fontWeight: AppFonts.regular,
        fontFamily: AppFonts.fontFamily,
      ),

      ///  Text BodyX-Small
      titleSmall: TextStyle(
        color: ThemeColorDark.titleSmallColor,
        fontSize: AppSizes.fs14,
        fontWeight: AppFonts.regular,
        fontFamily: AppFonts.fontFamily,
      ),

      ///  Text BodySmall
      bodySmall: TextStyle(
        color: ThemeColorDark.grayscale,
        fontSize: AppSizes.fs18,
        fontWeight: AppFonts.regular,
        fontFamily: AppFonts.fontFamily,
      ),

      ///  Text Body2Medium
      titleMedium: TextStyle(
        color: ThemeColorDark.primaryColor,
        fontSize: AppSizes.fs14,
        fontWeight: AppFonts.regular,
        fontFamily: AppFonts.fontFamily,
      ),
    );
