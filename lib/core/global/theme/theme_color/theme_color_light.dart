import 'package:flutter/material.dart';
import 'package:tut_app_mvvm_design_pattern/core/utils/hex_color.dart';

class ThemeColorLight {
  static  Color primaryColor = HexColor('#ED9728');
  static const Color grayscale = Color(0xFFA3A3A3);
  static const Color grayscaleBold = Color.fromRGBO(82, 82, 82, 1);
  static const Color overLayColor = Color(0xFFEFF0F6);
  static const Color textStyleTextFormFieldColor = Color(0xFF14142B);
  static Color disableColor = const Color(0xFF8F9BB3).withOpacity(0.5);

  /// Label For (Text)
  static const Color labelColor = Color.fromRGBO(153, 153, 153, 1);

  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color grey = Colors.grey;

  static const Color fillColorTextFormField = Color.fromRGBO(247, 245, 245, 1);
  static const Color focusBorderTextField = Color(0xFF14142B);
  static const Color hintTextFieldColor = Color(0xFFA0A3BD);
  static const Color validationTextFieldColor = Color(0xFFC30052);
  static const Color appBarTitleColor = Color(0xFF14142B);
  static const Color titleSmallColor = Color(0xFF8F9BB3);

  static const Color errorColor = Color(0xFFF2536F);

  /// TODO : REVIEW THIS
  static const Color badgeColor = Color(0xFFF71515);
  static const Color orange = Color(0xFFFF7600);


  /// Text Color
  static const Color labelMediumColor = Color(0xFF222B45);

  /// For Stars
  static const Color starsColor = Color.fromRGBO(251, 190, 15, 1);
}
