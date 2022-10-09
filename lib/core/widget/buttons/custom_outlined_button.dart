import 'package:flutter/material.dart';

import '../custom_text.dart';

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.isEnabled = true,
    this.isLoading = false,
  }) : super(key: key);
  final bool isEnabled;
  final void Function() onPressed;
  final String text;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: isEnabled ? onPressed : null,
      style: isEnabled
          ? Theme.of(context).outlinedButtonTheme.style
          : Theme.of(context).outlinedButtonTheme.style!.copyWith(
                side: MaterialStateProperty.resolveWith<BorderSide>((states) =>
                    BorderSide(color: Theme.of(context).disabledColor)),
              ),
      child: CustomText.titleSmall(
        text,
      ),
    );
  }
}
