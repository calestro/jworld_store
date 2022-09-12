import 'package:flutter/material.dart';

class DrawerStyle{
  static final BoxDecoration boxDrawer = BoxDecoration(
    color: Colors.red.withOpacity(0.6),
    borderRadius: BorderRadius.all(Radius.circular(10)),
    border: Border.all(
      color: Colors.red.shade200,
      strokeAlign: StrokeAlign.inside,
    )
  );
  static final BoxDecoration boxDrawerBack = BoxDecoration(
    color: Colors.red.shade100,
    borderRadius: BorderRadius.all(Radius.circular(20)),
    border: Border.all(
      color: Colors.red.shade800,
      strokeAlign: StrokeAlign.inside,
    )
  );
}