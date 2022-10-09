import 'package:flutter/material.dart';
import 'package:tut_app_mvvm_design_pattern/core/utils/app_sizes.dart';
import 'package:tut_app_mvvm_design_pattern/core/widget/custom_text.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.isEnabled = true,
    this.isLoading = false,
    this.width,
    this.height,
  }) : super(key: key);

  final bool isEnabled;
  final Function() onPressed;
  final String text;
  final bool isLoading;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? AppSizes.buttonWidthMedium,
      height: height ?? AppSizes.mediumButtonHeight,
      child: ElevatedButton(
          onPressed: isEnabled ? onPressed : null,
          style: Theme.of(context).elevatedButtonTheme.style,
          child: isLoading
              ? const CircularProgressIndicator()
              : CustomText.bodySmall(
                  text,
            buildContext: context,
                )),
    );
  }
}
