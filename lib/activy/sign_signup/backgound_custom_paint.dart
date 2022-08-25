import 'package:flutter/material.dart';

class CustomBackground extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.color = Colors.red.shade800;

    Path path = Path();
    double w = size.width;
    double h = size.height;
    path
    ..lineTo(0, 0)
    ..lineTo(w * .2, 0)
    ..lineTo(w * .2, h * .2)
    ..lineTo(0, h * .2)
    ..lineTo(0,0)
    ..lineTo(w * .4, h * .2)
    ..lineTo(w * .4, h * .4)
      ..lineTo(0, h * .4)
      ..lineTo(0,0)

    ..lineTo(w * .6, h * .4)
    ..lineTo(w * .6, h * .6)
    ..lineTo(0, h * .6)
    ..lineTo(0, 0)
    ..lineTo(w * .8, h * .6)
    ..lineTo(w * .8, h * .8)
    ..lineTo(0, h * .8)
    ..lineTo(0, 0)
    ..lineTo(w, h * .8)
    ..lineTo(w, h)
    ..lineTo(0, h)
    ..lineTo(0, 0)
    ..close();
    canvas.drawPath(path, paint);


  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
