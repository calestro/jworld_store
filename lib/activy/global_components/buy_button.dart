import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobile_j_world/activy/function.dart';
import '../../fake_bd/helper/products.dart';


class BuyButton extends StatefulWidget {
  final ProductsBd snapshot;
  final Function update;
  final int index;
  double hg;
  bool isRadius;
  BuyButton({Key? key, required this.snapshot, required this.update, required this.index, this.hg = 40, this.isRadius = true}) : super(key: key);

  @override
  State<BuyButton> createState() => _BuyButtonState();
}

class _BuyButtonState extends State<BuyButton> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    MyFunctions funct = MyFunctions();


    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap:(){
          setState(() {isPressed = true;});
          funct.insertCart(widget.snapshot, widget.index);
          Timer(Duration(milliseconds: 1000), ()=> setState(() {isPressed = false;}));
          widget.update();
          },
        child: Container(
          width: double.maxFinite,
          padding: const EdgeInsets.all(5),
          height: widget.hg,
          decoration: BoxDecoration(
            color:isPressed ? Colors.green : Colors.red,
            borderRadius: widget.isRadius ? BorderRadius.all(Radius.circular(12)) : null,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              Icon(Icons.shopping_cart_outlined,color: Colors.white,size: isPressed ? 30 : 25,),
              isPressed ? Container() : Text("COMPRAR", style: TextStyle(color: Colors.white),)
            ],
          ),
        ),
      ),
    );
  }
}
