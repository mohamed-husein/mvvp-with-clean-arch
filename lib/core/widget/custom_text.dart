import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(
    this.text, {
    Key? key,
    required this.textStyle,
    this.textAlign,
    this.textDirection,
    this.overflow,
    required this.buildContext,
    this.maxLines,
  }) : super(key: key);

  /// Display Small
  CustomText.displaySmall(
    String text, {
    Key? key,
    TextAlign? textAlign,
    String? fontFamily,
    int? maxLines,
    TextStyle? textStyle,
    TextOverflow? overflow,
    required BuildContext buildContext,
  }) : this(
          text,
          key: key,
          maxLines: maxLines,
          textAlign: textAlign,
          overflow: overflow,
          buildContext: buildContext,
          textStyle: textStyle ?? Theme.of(buildContext).textTheme.displaySmall,
        );

  /// Display Medium
  CustomText.displayMedium(
    String text, {
    Key? key,
    TextAlign? textAlign,
    String? fontFamily,
    int? maxLines,
    TextStyle? textStyle,
    TextOverflow? overflow,
    required BuildContext buildContext,
  }) : this(
          text,
          key: key,
          maxLines: maxLines,
          textAlign: textAlign,
          overflow: overflow,
          buildContext: buildContext,
          textStyle:
              textStyle ?? Theme.of(buildContext).textTheme.displayMedium,
        );

  /// Display Large
  CustomText.displayLarge(
    String text, {
    Key? key,
    TextAlign? textAlign,
    String? fontFamily,
    int? maxLines,
    TextStyle? textStyle,
    TextOverflow? overflow,
    required BuildContext buildContext,
  }) : this(
          text,
          key: key,
          maxLines: maxLines,
          textAlign: textAlign,
          buildContext: buildContext,
          overflow: overflow,
          textStyle:
              textStyle ?? Theme.of(buildContext).textTheme.displayLarge,
        );

  /// Display Large Bold
  CustomText.displayLargeBold(
    String text, {
    Key? key,
    TextAlign? textAlign,
    String? fontFamily,
    int? maxLines,
    TextStyle? textStyle,
    TextOverflow? overflow,
    required BuildContext buildContext,
  }) : this(
          text,
          key: key,
          maxLines: maxLines,
          textAlign: textAlign,
          buildContext: buildContext,
          overflow: overflow,
          textStyle:
              textStyle ?? Theme.of(buildContext).textTheme.headlineLarge,
        );

  /// Display Medium Bold
  CustomText.displayMediumBold(
    String text, {
    Key? key,
    TextAlign? textAlign,
    String? fontFamily,
    int? maxLines,
    TextStyle? textStyle,
    TextOverflow? overflow,
    required BuildContext buildContext,
  }) : this(
          text,
          key: key,
          maxLines: maxLines,
          textAlign: textAlign,
          overflow: overflow,
          buildContext: buildContext,
          textStyle:
              textStyle ?? Theme.of(buildContext).textTheme.headlineMedium,
        );

  /// Display  Small Bold
  CustomText.displaySmallBold(
    String text, {
    Key? key,
    TextAlign? textAlign,
    String? fontFamily,
    int? maxLines,
    TextStyle? textStyle,
    TextOverflow? overflow,
    required BuildContext buildContext,
  }) : this(
          text,
          key: key,
          maxLines: maxLines,
          textAlign: textAlign,
          buildContext: buildContext,
          overflow: overflow,
          textStyle:
              textStyle ?? Theme.of(buildContext).textTheme.headlineSmall,
        );

  ///Body Small
  CustomText.bodySmall(
    String text, {
    Key? key,
    TextAlign? textAlign,
    String? fontFamily,
    int? maxLines,
    TextStyle? textStyle,
    TextOverflow? overflow,
    required BuildContext buildContext,
  }) : this(
          text,
          key: key,
          maxLines: maxLines,
          textAlign: textAlign,
          buildContext: buildContext,
          overflow: overflow,
          textStyle: textStyle ?? Theme.of(buildContext).textTheme.bodySmall,
        );

  ///Body Medium
  CustomText.bodyMedium(
    String text, {
    Key? key,
    TextAlign? textAlign,
    int? maxLines,
    TextStyle? textStyle,
    TextOverflow? overflow,
    required BuildContext buildContext,
  }) : this(
          text,
          key: key,
          maxLines: maxLines,
          textAlign: textAlign,
          overflow: overflow,
          buildContext: buildContext,
          textStyle: textStyle ?? Theme.of(buildContext).textTheme.bodyMedium,
        );

  ///Body Large
  CustomText.bodyLarge(
    String text, {
    Key? key,
    TextAlign? textAlign,
    String? fontFamily,
    int? maxLines,
    TextStyle? textStyle,
    TextOverflow? overflow,
    required BuildContext buildContext,
  }) : this(
          text,
          key: key,
          maxLines: maxLines,
          textAlign: textAlign,
          buildContext: buildContext,
          overflow: overflow,
          textStyle: textStyle ?? Theme.of(buildContext).textTheme.bodyLarge,
        );

  CustomText.titleSmall(
    String text, {
    Key? key,
    TextAlign? textAlign,
    String? fontFamily,
    int? maxLines,
    TextStyle? textStyle,
    TextOverflow? overflow,
    required BuildContext buildContext,
  }) : this(
          text,
          key: key,
          maxLines: maxLines,
          textAlign: textAlign,
          buildContext: buildContext,
          overflow: overflow,
          textStyle: textStyle ?? Theme.of(buildContext).textTheme.titleSmall,
        );

  /// black in light -- white in dark
  CustomText.titleMedium(
    String text, {
    Key? key,
    TextAlign? textAlign,
    String? fontFamily,
    int? maxLines,
    TextStyle? textStyle,
    TextOverflow? overflow,
    required BuildContext buildContext,
  }) : this(
          text,
          key: key,
          maxLines: maxLines,
          textAlign: textAlign,
          buildContext: buildContext,
          overflow: overflow,
          textStyle: textStyle ?? Theme.of(buildContext).textTheme.titleMedium,
        );

  CustomText.titleLarge(
    String text, {
    Key? key,
    TextAlign? textAlign,
    String? fontFamily,
    int? maxLines,
    TextStyle? textStyle,
    TextOverflow? overflow,
    required BuildContext buildContext,
  }) : this(
          text,
          key: key,
          maxLines: maxLines,
          textAlign: textAlign,
          buildContext: buildContext,
          overflow: overflow,
          textStyle: textStyle ?? Theme.of(buildContext).textTheme.titleLarge,
        );

  CustomText.body2XSmall(
    String text, {
    Key? key,
    TextAlign? textAlign,
    int? maxLines,
    TextStyle? textStyle,
    TextOverflow? overflow,
    required BuildContext buildContext,
  }) : this(
          text,
          key: key,
          buildContext: buildContext,
          maxLines: maxLines,
          textAlign: textAlign,
          overflow: overflow,
          textStyle: textStyle ?? Theme.of(buildContext).textTheme.labelSmall,
        );

  /// Body 2 Large
  CustomText.body2Large(
    String text, {
    Key? key,
    TextAlign? textAlign,
    int? maxLines,
    TextStyle? textStyle,
    TextOverflow? overflow,
    required BuildContext buildContext,
  }) : this(
          text,
          key: key,
          maxLines: maxLines,
          textAlign: textAlign,
          buildContext: buildContext,
          overflow: overflow,
          textStyle: textStyle ?? Theme.of(buildContext).textTheme.titleLarge,
        );

  /// Body 2 Medium
  CustomText.body2Medium(
    String text, {
    Key? key,
    TextAlign? textAlign,
    int? maxLines,
    TextStyle? textStyle,
    TextOverflow? overflow,
    required BuildContext buildContext,
  }) : this(
          text,
          key: key,
          maxLines: maxLines,
          textAlign: textAlign,
          buildContext: buildContext,
          overflow: overflow,
          textStyle: textStyle ?? Theme.of(buildContext).textTheme.titleMedium,
        );

  /// Label
  CustomText.labelSmall(
    String text, {
    Key? key,
    TextAlign? textAlign,
    int? maxLines,
    TextStyle? textStyle,
    TextOverflow? overflow,
    required BuildContext buildContext,
  }) : this(
          text,
          key: key,
          maxLines: maxLines,
          textAlign: textAlign,
          buildContext: buildContext,
          overflow: overflow,
          textStyle: textStyle ?? Theme.of(buildContext).textTheme.labelSmall,
        );

  CustomText.labelMedium(
    String text, {
    Key? key,
    TextAlign? textAlign,
    int? maxLines,
    TextStyle? textStyle,
    TextOverflow? overflow,
    required BuildContext buildContext,
  }) : this(
          text,
          key: key,
          maxLines: maxLines,
          textAlign: textAlign,
          buildContext: buildContext,
          overflow: overflow,
          textStyle: textStyle ?? Theme.of(buildContext).textTheme.labelMedium,
        );

  CustomText.labelLarge(
    String text, {
    Key? key,
    TextAlign? textAlign,
    int? maxLines,
    TextStyle? textStyle,
    TextOverflow? overflow,
    required BuildContext buildContext,
  }) : this(
          text,
          key: key,
          maxLines: maxLines,
          textAlign: textAlign,
          buildContext: buildContext,
          overflow: overflow,
          textStyle: textStyle ?? Theme.of(buildContext).textTheme.labelLarge,
        );

  final String text;
  final TextStyle? textStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final TextOverflow? overflow;
  final int? maxLines;
  final BuildContext buildContext;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle ?? Theme.of(buildContext).textTheme.displayMedium,
      textAlign: textAlign ?? TextAlign.center,
      textDirection: textDirection,
      overflow: overflow,
      maxLines: maxLines,
    );
  }
}
