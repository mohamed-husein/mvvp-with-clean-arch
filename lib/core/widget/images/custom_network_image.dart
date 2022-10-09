

import 'package:flutter/material.dart';
import 'package:tut_app_mvvm_design_pattern/core/utils/app_sizes.dart';

class CustomNetworkImage extends StatelessWidget {
  const CustomNetworkImage({
    Key? key,
    required this.path,
    this.height,
    this.width,
    this.radius,
  }) : super(key: key);

  CustomNetworkImage.square({
    Key? key,
    required String path,
  }) : this(
          key: key,
          radius: BorderRadius.circular(AppSizes.br8),
          path: path,
          height: AppSizes.imageHeightMedium,
          width: AppSizes.imageWidthMedium,
        );

  final String path;
  final double? height;
  final double? width;

  final BorderRadius? radius;

  @override
  Widget build(BuildContext context) {
    /// TODO : MAKE PLACEHOLDER
    return Image.network(
      path,
      height: height ?? AppSizes.imageHeightLarge,
      width: width ?? AppSizes.widthFullScreen,
      fit: BoxFit.cover,
     // color: Colors.transparent,
    );
  }
}
