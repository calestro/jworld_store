import 'package:flutter/material.dart';
import 'package:mobile_j_world/activy/helper/cart_helper.dart';
import 'package:mobile_j_world/fake_bd/fake_bd.dart';


class BuyButton extends StatelessWidget {
  final snapshot;
  final Function update;
  const BuyButton({Key? key, required this.snapshot, required this.update}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FakeBd bd = FakeBd();

    return GestureDetector(
      onTap: (){
        bd.myCart.add(MyCartHelper(snapshot, 1, "M"));
        update();
      },
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.all(5),
        height: 40,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.shopping_cart_outlined,color: Colors.white,),
            Text("COMPRAR", style: TextStyle(color: Colors.white),)
          ],
        ),
      ),
    );
  }
}
