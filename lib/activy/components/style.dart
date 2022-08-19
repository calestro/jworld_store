import 'package:flutter/material.dart';

//Estilos do componente Search Bar
class MainAppStyle {

  // Input Decoration da Search TexField
  final InputDecoration inputStyle = InputDecoration(
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
      color: Colors.red.withOpacity(0.1),
      borderRadius: BorderRadius.only(
        topLeft:Radius.circular(20) ,
        topRight:Radius.circular(14),
        bottomLeft:Radius.circular(14),
        bottomRight:Radius.circular(20),
      ),
      border: Border(
        top:BorderSide(color: Colors.redAccent.withOpacity(0.7), width: 5, style: BorderStyle.solid, ),
        left:BorderSide(color: Colors.redAccent.withOpacity(0.7), width: 5, style: BorderStyle.solid, ),
        right:BorderSide(color: Colors.redAccent.withOpacity(0.7), width: 5, style: BorderStyle.solid, ),
        bottom:BorderSide(color: Colors.redAccent.withOpacity(0.7), width: 5, style: BorderStyle.solid,),
      )
  );

}