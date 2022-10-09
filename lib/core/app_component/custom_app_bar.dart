import 'package:flutter/material.dart';
import 'package:tut_app_mvvm_design_pattern/core/widget/custom_text.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key, required this.title, this.actions})
      : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);
  final String title;
  final List<Widget>? actions;
  @override
  final Size preferredSize;

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: CustomText(
        buildContext: context,
        widget.title,
        textStyle: Theme.of(context).appBarTheme.titleTextStyle,
      ),
      actions: widget.actions,
    );
  }
}
