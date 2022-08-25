import 'package:flutter/material.dart';
import 'package:mobile_j_world/activy/function.dart';

import '../../fake_bd/helper/products.dart';


class BuyButton extends StatelessWidget {
  final ProductsBd snapshot;
  final Function update;
  final int index;
  const BuyButton({Key? key, required this.snapshot, required this.update, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyFunctions funct = MyFunctions();

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap:(){
          funct.insertCart(snapshot, index);
          update();
          },
        child: Container(
          width: double.maxFinite,
          padding: const EdgeInsets.all(5),
          height: 40,
          decoration: const BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.shopping_cart_outlined,color: Colors.white,),
              Text("COMPRAR", style: TextStyle(color: Colors.white),)
            ],
          ),
        ),
      ),
    );
  }
}
