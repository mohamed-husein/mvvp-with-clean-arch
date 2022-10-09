import 'package:flutter/material.dart';
import 'package:tut_app_mvvm_design_pattern/core/utils/app_sizes.dart';

/// TODO : EHAB  MAKE CUSTOM ELEVATION BUTTON using ThemeDATA
/// /// TODO : done
/// TODO : unacceptable
class CustomAvatarImage extends StatelessWidget {
  const CustomAvatarImage(
    this.url, {
    Key? key,
    this.radius,
  }) : super(key: key);
  final double? radius;
  final String url;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius ?? AppSizes.br25,
      backgroundImage: NetworkImage(
        url,
      ),
    );
  }
}
