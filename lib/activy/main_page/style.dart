import 'package:flutter/material.dart';

//Estilos do componente Search Bar
class MainAppStyle {

  // Box Decoration
  final InputDecoration inputStyle = const InputDecoration(
    filled: true,
    fillColor: Colors.white,
    hintText: "Procurar...",
    suffixIcon: Icon(Icons.search),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.redAccent,
        width: 1,
      ),
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(12),
        topRight: Radius.circular(20),
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(12),
      ),
    ),
    focusedBorder: OutlineInputBorder(
        borderRadius:BorderRadius.only(
          topLeft: Radius.circular(13),
          topRight: Radius.circular(21),
          bottomLeft: Radius.circular(21),
          bottomRight: Radius.circular(13),
        ),
        borderSide: BorderSide(color: Colors.transparent)
    ),
    constraints: BoxConstraints(
      maxWidth: 800,
    ),
    labelStyle: TextStyle(
      fontWeight: FontWeight.bold,
    ),
  );

  final BoxDecoration menuCategory = BoxDecoration(
      color: const Color(0xfff11111).withOpacity(0.8),
      borderRadius: const BorderRadius.only(
        topLeft:Radius.circular(20) ,
        topRight:Radius.circular(14),
        bottomLeft:Radius.circular(14),
        bottomRight:Radius.circular(20),
      ),
      border: Border(
        top:BorderSide(color: const Color(0xfff11111).withOpacity(0.3), width: 1, style: BorderStyle.solid, ),
        left:BorderSide(color: const Color(0xfff11111).withOpacity(0.3), width: 1, style: BorderStyle.solid, ),
        right:BorderSide(color: const Color(0xfff11111).withOpacity(0.3), width: 1, style: BorderStyle.solid, ),
        bottom:BorderSide(color: const Color(0xfff11111).withOpacity(0.3), width: 1, style: BorderStyle.solid,),
      )
  );

  final BoxDecoration tileProducts = BoxDecoration(
    color: const Color(0xfff4e7e7).withOpacity(0.5),
    borderRadius: const BorderRadius.vertical(
        top: Radius.elliptical(25, 25),
        bottom: Radius.elliptical(25, 25)
    ),
    border: Border(
      top:BorderSide(width: 3,color: const Color(0xfff4e7e7).withOpacity(0.2)),
      bottom:BorderSide(width: 3,color: const Color(0xfff4e7e7).withOpacity(0.2)),
      left:BorderSide(width: 3,color: const Color(0xfff4e7e7).withOpacity(0.2)),
      right:BorderSide(width: 3,color: const Color(0xfff4e7e7).withOpacity(0.2)),
    ),
  );

  //TextStyle
  final TextStyle textMenuCategory = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  final TextStyle textProductName = const TextStyle(
    fontWeight: FontWeight.bold,
  );
final TextStyle textPrice = const TextStyle(
    fontWeight: FontWeight.bold,
  );



}