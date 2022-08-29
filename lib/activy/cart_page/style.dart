import 'package:flutter/material.dart';


class CartStyle{

  //Text
  static TextStyle titleCart = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );
  static TextStyle price = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
  );
  static TextStyle sizeText = const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
  ) ;

  static TextStyle allTotal = const TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.w400,
  fontSize: 22,
  );
  
  //Box
  static BoxDecoration boxSize = const BoxDecoration(
      color: Colors.red,
      borderRadius: BorderRadius.all(Radius.circular(20))
  );
  
  
}