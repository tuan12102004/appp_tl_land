import 'package:flutter/material.dart';

class CustomExpansionTitle extends StatelessWidget {
  final Widget title;
  final List<Widget> children;

  const CustomExpansionTitle({
    super.key,
    required this.title,
    this.children = const <Widget>[],
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        dividerColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        listTileTheme: ListTileTheme.of(context).copyWith(
          dense: true,
          contentPadding: EdgeInsets.zero,
          visualDensity: VisualDensity.compact,
          minVerticalPadding: 0,
        ),
      ),
      child: ExpansionTile(
        tilePadding: EdgeInsets.zero,
        childrenPadding: EdgeInsets.zero,
        minTileHeight: 0,
        showTrailingIcon: false,
        title: title,
        children: children,
      ),
    );
  }
}
