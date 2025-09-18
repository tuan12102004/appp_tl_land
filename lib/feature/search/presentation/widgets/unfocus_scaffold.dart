import 'package:app_tl_land_3212/common/widgets/unfocus_widget.dart';
import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class UnfocusScaffold extends StatelessWidget {
  final Color? backgroundColor;
  final PreferredSizeWidget? appBar;
  final Widget body;
  final Widget? bottomNavigationBar;
  final EdgeInsets? padding;

  const UnfocusScaffold({
    super.key,
    this.backgroundColor,
    this.appBar,
    required this.body,
    this.bottomNavigationBar,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return UnfocusWidget(
      child: Scaffold(
        backgroundColor:
            backgroundColor ?? BackgroundColors.backgroundDefaultPrimary,
        appBar: appBar,
        body: body,
        bottomNavigationBar: bottomNavigationBar,
      ),
    );
  }
}
