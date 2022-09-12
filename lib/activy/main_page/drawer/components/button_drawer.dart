import 'package:flutter/material.dart';

import '../style.dart';

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
      decoration: DrawerStyle.boxDrawerBack,
      padding: EdgeInsets.all(2),
      child: Container(
        width: wd,
        height: 40,
        padding: const EdgeInsets.all(10),
        decoration: DrawerStyle.boxDrawer,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(iconData),
            Text(text),
          ],
        ),
      ),
    );
  }
}
