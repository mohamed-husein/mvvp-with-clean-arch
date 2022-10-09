import 'package:flutter/material.dart';
import '../../../utils/app_fonts.dart';
import '../../../utils/app_sizes.dart';
import '../theme_color/theme_color_light.dart';

ThemeData get getThemeDataLight => ThemeData(
      scaffoldBackgroundColor: ThemeColorLight.white,
      primaryColor: ThemeColorLight.primaryColor,
      disabledColor: ThemeColorLight.disableColor,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.black,
        primary: Colors.black,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: ThemeColorLight.primaryColor,
        focusColor: ThemeColorLight.primaryColor,
        foregroundColor: ThemeColorLight.primaryColor,
      ),
      brightness: Brightness.light,
      errorColor: ThemeColorLight.errorColor,
      progressIndicatorTheme:  ProgressIndicatorThemeData(
        color: ThemeColorLight.primaryColor,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: ThemeColorLight.primaryColor,
        selectedLabelStyle: TextStyle(
          color: ThemeColorLight.primaryColor,
          fontSize: AppSizes.fs14,
          fontWeight: AppFonts.regular,
          fontFamily: AppFonts.fontFamily,
        ),
        unselectedItemColor: ThemeColorLight.grayscale,
        unselectedLabelStyle: TextStyle(
          color: ThemeColorLight.grayscale,
          fontSize: AppSizes.fs14,
          fontWeight: AppFonts.regular,
          fontFamily: AppFonts.fontFamily,
        ),
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),

      /// Icon
      iconTheme: const IconThemeData(
        color: ThemeColorLight.grayscale,
      ),

      primaryIconTheme: const IconThemeData(
        color: ThemeColorLight.black,
      ),
      dividerColor: ThemeColorLight.grayscale,

      /// For Indicator
      indicatorColor: Colors.white,

      /// For Divider
      dividerTheme: const DividerThemeData(color: ThemeColorLight.grayscale),

      /// Button theme

      buttonTheme: ButtonThemeData(
        buttonColor: ThemeColorLight.primaryColor,
        shape: RoundedRectangleBorder(
          side: BorderSide.none,
          borderRadius: BorderRadius.circular(AppSizes.br8),
        ),
      ),



      /// TextFormField
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(
          color: ThemeColorLight.labelColor,
          fontSize: AppSizes.fs14,
          fontWeight: AppFonts.regular,
          fontFamily: AppFonts.fontFamily,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(AppSizes.br8),
        ),
        fillColor: ThemeColorLight.fillColorTextFormField,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: ThemeColorLight.focusBorderTextField,
            width: AppSizes.bs0_5,
          ),
          borderRadius: BorderRadius.circular(AppSizes.br8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(AppSizes.br8),
        ),
        errorStyle: TextStyle(
          color: ThemeColorLight.validationTextFieldColor,
          fontSize: AppSizes.fs14,
          fontWeight: AppFonts.regular,
          fontFamily: AppFonts.fontFamily,
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(AppSizes.br8),
        ),
        labelStyle: TextStyle(
          color: ThemeColorLight.black,
          fontSize: AppSizes.fs13,
          fontFamily: AppFonts.fontFamily,
        ),
      ),

      appBarTheme: AppBarTheme(
        backgroundColor: ThemeColorLight.white,
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: ThemeColorLight.black),
        titleTextStyle: TextStyle(
          color: ThemeColorLight.black,
          fontFamily: AppFonts.fontFamily,
          fontWeight: AppFonts.regular,
          fontSize: AppSizes.fs15,
        ),
      ),

      fontFamily: AppFonts.fontFamily,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(ThemeColorLight.primaryColor),
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(
                vertical: AppSizes.pH8, horizontal: AppSizes.pW18),
          ),
          foregroundColor:
              MaterialStateProperty.all<Color>(ThemeColorLight.primaryColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSizes.br8),
            ),
          ),
        ),
      ),

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: ThemeColorLight.grayscale),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(AppSizes.br8),
            ),
          ),
        ),
      ),

      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSizes.br40),
            ),
          ),
          overlayColor:
              MaterialStateProperty.all<Color>(ThemeColorLight.overLayColor),
          textStyle: MaterialStateProperty.all(
            TextStyle(
              color: ThemeColorLight.labelColor,
              fontSize: AppSizes.fs16,
              fontWeight: AppFonts.regular,
              fontFamily: AppFonts.fontFamily,
            ),
          ),
        ),
      ),
      hintColor: ThemeColorLight.grayscale,

      textTheme: getTextTheme(),
    );

getTextTheme() => TextTheme(
      /// Black Text
      displaySmall: TextStyle(
        color: ThemeColorLight.black,
        fontSize: AppSizes.fs14,
        fontWeight: AppFonts.regular,
      ),
      displayMedium: TextStyle(
        color: ThemeColorLight.black,
        fontSize: AppSizes.fs16,
        fontWeight: AppFonts.semiBold,
      ),
      displayLarge: TextStyle(
        color: ThemeColorLight.grayscaleBold,
        fontSize: AppSizes.fs32,
        fontWeight: AppFonts.bold,
      ),
      /// Orange Color
      headlineLarge: TextStyle(
        color: ThemeColorLight.primaryColor,
        fontSize: AppSizes.fs18,
        fontWeight: AppFonts.semiBold,
      ),
      headlineMedium: TextStyle(
        color: ThemeColorLight.grayscale,
        fontSize: AppSizes.fs12,
        fontWeight: AppFonts.bold,
      ),
      /// text button orange
      headlineSmall: TextStyle(
        color: ThemeColorLight.primaryColor,
        fontSize: AppSizes.fs16,
        fontWeight: AppFonts.medium,
      ),
      /// Body For Text in Buttons
      bodySmall: TextStyle(
        color: ThemeColorLight.white,
        fontSize: AppSizes.fs17,
        fontWeight: AppFonts.regular,
      ),
      // bodyMedium: TextStyle(
      //   color: ThemeColorLight.black,
      //   fontSize: AppSizes.fs18,
      //   fontWeight: AppFonts.regular,
      // ),
      // bodyLarge: TextStyle(
      //   color: ThemeColorLight.black,
      //   fontSize: AppSizes.fs20,
      //   fontWeight: AppFonts.regular,
      // ),
      /// Title
      // titleSmall: TextStyle(
      //   color: ThemeColorLight.black,
      //   fontSize: AppSizes.fs11,
      //   fontWeight: AppFonts.regular,
      // ),
      /// black in light -- white in dark
      // titleMedium: TextStyle(
      //   color: ThemeColorLight.black,
      //   fontSize: AppSizes.fs13,
      //   fontWeight: AppFonts.regular,
      // ),
      // titleLarge: TextStyle(
      //   color: ThemeColorLight.black,
      //   fontSize: AppSizes.fs24,
      //   fontWeight: AppFonts.regular,
      // ),
      /// Label For (Text , Button) With Color Grey
      labelSmall: TextStyle(
        color: ThemeColorLight.labelColor,
        fontSize: AppSizes.fs14,
        fontWeight: AppFonts.medium,
      ),
      labelMedium: TextStyle(
        color: ThemeColorLight.labelColor,
        fontSize: AppSizes.fs14,
        fontWeight: AppFonts.regular,
      ),
      // labelLarge: TextStyle(
      //   color: ThemeColorLight.black,
      //   fontSize: AppSizes.fs16,
      //   fontWeight: AppFonts.regular,
      // ),
    );
