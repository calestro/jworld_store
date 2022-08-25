import 'package:flutter/material.dart';


class CartStyle{

  //Text
  final TextStyle titleCart = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );
  final TextStyle price = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
  );
  final TextStyle sizeText = const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
  ) ;

  final TextStyle allTotal = const TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.w400,
  fontSize: 22,
  );
  
  //Box

  final BoxDecoration boxSize = const BoxDecoration(
      color: Colors.red,
      borderRadius: BorderRadius.all(Radius.circular(20))
  );
  
  
}