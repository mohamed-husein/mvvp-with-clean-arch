import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {Key? key,
      required this.textButton,
      required this.onPressed,
      this.isLoading = false,
      this.isEnable = true})
      : super(key: key);

  final Function() onPressed;
  final String textButton;
  final bool isLoading;
  final bool isEnable;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: isEnable && !isLoading ? onPressed : null,
      style: Theme.of(context).textButtonTheme.style,
      child: isLoading
          ? const CircularProgressIndicator()

          /// TODO : ADD ANOTHER COLORS
          : Text(textButton,
              style: Theme.of(context).textTheme.headlineSmall
              // isEnable
              //     ? Theme.of(context).textButtonTheme.style!.textStyle
              //     : Theme.of(context).textTheme.labelSmall!.copyWith(
              //           color: ThemeColorLight.disableColor,
              //         ),
              ),
    );
  }
}
