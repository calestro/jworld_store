import 'package:flutter/material.dart';


class DescStyle{
  final TextStyle title = const TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w600,
    color: Colors.black
  );

  final TextStyle price = const TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.w700,
      color: Colors.black,
  );

  final BoxDecoration image = BoxDecoration(
    color: Colors.grey.shade100,
    borderRadius: BorderRadius.all(Radius.circular(15)),
    border: Border(
      top:BorderSide(color: Colors.black.withOpacity(0.1), width: 2),
      left:BorderSide(color: Colors.black.withOpacity(0.1), width: 2),
      right:BorderSide(color: Colors.black.withOpacity(0.1), width: 2),
      bottom:BorderSide(color: Colors.black.withOpacity(0.1), width: 2),
    ),
  );

  final BoxDecoration imageBack = BoxDecoration(
    color: Colors.grey.shade200,
    borderRadius: BorderRadius.all(Radius.circular(22)),
    border: Border(
      top:BorderSide(color: Colors.grey.shade100, width: 1),
      left:BorderSide(color: Colors.grey.shade100, width: 1),
      right:BorderSide(color: Colors.grey.shade100, width: 1),
      bottom:BorderSide(color: Colors.grey.shade100, width: 1),
    ),
  );

  final BoxDecoration priceContainer = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.all(Radius.circular(2)),

  );

  final BoxDecoration priceContainerBack = BoxDecoration(
      color: Colors.red.shade900,
    borderRadius: BorderRadius.all(Radius.circular(6)),
  );


}