import 'package:flutter/material.dart';

class ButtonDrawer extends StatelessWidget {
  final double wd;
  final String text;
  final Widget navigatorWidget;
  final IconData iconData;

  const ButtonDrawer({Key? key,
    required this.wd,
    required this.text,
    required this.navigatorWidget,
    required this.iconData
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: wd,
      height: 40,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(iconData),
          Text(text),
        ],
      ),
    );
  }
}
