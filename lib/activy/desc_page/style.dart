import 'package:flutter/material.dart';


class DescStyle{
  final TextStyle title = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w600,
    color: Colors.black
  );

  final TextStyle price = TextStyle(
      fontSize: 23,
      fontWeight: FontWeight.w700,
      color: Colors.black
  );

  final BoxDecoration image = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.all(Radius.circular(12)),
    border: Border(
      top:BorderSide(color: Colors.red, width: 1),
      left:BorderSide(color: Colors.red, width: 1),
      right:BorderSide(color: Colors.red, width: 1),
      bottom:BorderSide(color: Colors.red, width: 1),
    ),
  );

  final BoxDecoration imageBack = BoxDecoration(
    color: Colors.red,
    borderRadius: BorderRadius.all(Radius.circular(30)),
    border: Border(
      top:BorderSide(color: Colors.redAccent, width: 1),
      left:BorderSide(color: Colors.redAccent, width: 1),
      right:BorderSide(color: Colors.redAccent, width: 1),
      bottom:BorderSide(color: Colors.redAccent, width: 1),
    ),
  );


}