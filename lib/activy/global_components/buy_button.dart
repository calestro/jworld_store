import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobile_j_world/activy/function.dart';
import 'package:mobile_j_world/activy/global_components/cart_animated.dart';
import '../../fake_bd/helper/products.dart';


// ignore: must_be_immutable
class BuyButton extends StatefulWidget {
  final ProductsBd snapshot;
  final int index;
  final Function upodate;
  double hg;
  bool isRadius;
  BuyButton({Key? key, required this.snapshot, required this.index, this.hg = 40, this.isRadius = true, required this.upodate}) : super(key: key);

  @override
  State<BuyButton> createState() => _BuyButtonState();
}

class _BuyButtonState extends State<BuyButton> {
  bool isPressed = false;
  MyFunctions funct = MyFunctions();


  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap:(){
          setState(() {isPressed = true;});
          funct.insertCart(widget.snapshot, widget.index);
          Timer(const Duration(milliseconds: 1000), ()=> setState(() {isPressed = false;}));
          CartAnimatedState.itemADD.value++;
          },
        child: Container(
          width: double.maxFinite,
          padding: const EdgeInsets.all(5),
          height: widget.hg,
          decoration: BoxDecoration(
            color:isPressed ? Colors.green : Colors.red,
            borderRadius: widget.isRadius ? const BorderRadius.all(Radius.circular(12)) : null,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              Icon(Icons.shopping_cart_outlined,color: Colors.white,size: isPressed ? 30 : 25,),
              isPressed ? Container() : const Text("COMPRAR", style: TextStyle(color: Colors.white),)
            ],
          ),
        ),
      ),
    );
  }
}
