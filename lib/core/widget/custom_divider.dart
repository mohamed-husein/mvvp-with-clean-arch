import 'package:flutter/material.dart';
import 'package:tut_app_mvvm_design_pattern/core/utils/app_sizes.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: AppSizes.dv1,
      color: Theme.of(context).dividerColor,
    );
  }
}
