import 'package:flutter/material.dart';


class DescStyle{
  final TextStyle title = const TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w600,
    color: Colors.black
  );

  final TextStyle price = const TextStyle(
      fontSize: 23,
      fontWeight: FontWeight.w700,
      color: Colors.white
  );

  final BoxDecoration image = const BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.all(Radius.circular(12)),
    border: Border(
      top:BorderSide(color: Colors.red, width: 1),
      left:BorderSide(color: Colors.red, width: 1),
      right:BorderSide(color: Colors.red, width: 1),
      bottom:BorderSide(color: Colors.red, width: 1),
    ),
  );

  final BoxDecoration imageBack = const BoxDecoration(
    color: Colors.red,
    borderRadius: BorderRadius.all(Radius.circular(30)),
    border: Border(
      top:BorderSide(color: Colors.redAccent, width: 1),
      left:BorderSide(color: Colors.redAccent, width: 1),
      right:BorderSide(color: Colors.redAccent, width: 1),
      bottom:BorderSide(color: Colors.redAccent, width: 1),
    ),
  );

  final BoxDecoration priceContainer = BoxDecoration(
    color: Colors.red,
    borderRadius: BorderRadius.all(Radius.circular(60)),
  );


}