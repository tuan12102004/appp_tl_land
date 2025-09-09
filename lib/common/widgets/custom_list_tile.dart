import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final double? horizontalTitleGap;
  final Widget? leading;
  final Widget? title;
  final Widget? subtitle;
  final Widget? trailing;

  const CustomListTile({
    super.key,
    this.horizontalTitleGap,
    this.leading,
    this.title,
    this.subtitle,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minVerticalPadding: 0,
      minTileHeight: 0,
      minLeadingWidth: 0,
      horizontalTitleGap: horizontalTitleGap,
      contentPadding: EdgeInsets.zero,
      visualDensity: VisualDensity.compact,
      dense: true,
      splashColor: Colors.transparent,
      leading: leading,
      title: title,
      subtitle: subtitle,
      trailing: trailing,
    );
  }
}
