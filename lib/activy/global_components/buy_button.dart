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
        child: AnimatedContainer(
          curve: Curves.fastOutSlowIn,
          duration: Duration(milliseconds: 500),
          width: double.maxFinite,
          padding: const EdgeInsets.all(5),
          height: widget.hg,
          decoration: BoxDecoration(
            color:isPressed ? Colors.green : Colors.red,
            borderRadius: widget.isRadius ? const BorderRadius.all(Radius.circular(12)) : null,
          ),
          child: Padding(
            padding: EdgeInsets.only(left:isPressed ? 0 : 15),
            child: Stack(
              children:  [
                AnimatedAlign(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.fastOutSlowIn,
                    alignment: isPressed ? Alignment.center : Alignment.centerLeft,
                    child: AnimatedScale(
                        curve: Curves.fastOutSlowIn,
                      duration:Duration(milliseconds: 500),
                        scale: isPressed ? 1.3 : 1,
                        child: Icon(Icons.shopping_cart_outlined,color: Colors.white,size: 25,))),
                Align(
                  alignment: Alignment.center,
                    child:AnimatedOpacity (
                      duration: Duration(milliseconds: 400),
                      opacity: isPressed ? 0 : 1,
                        curve: Curves.fastOutSlowIn,
                        child: const Text("COMPRAR", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
