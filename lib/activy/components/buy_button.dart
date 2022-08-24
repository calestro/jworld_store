import 'package:flutter/material.dart';
import 'package:mobile_j_world/activy/helper/cart_helper.dart';
import 'package:mobile_j_world/activy/helper/send_to_cart.dart';
import 'package:mobile_j_world/fake_bd/fake_bd.dart';


class BuyButton extends StatelessWidget {
  final snapshot;
  final Function update;
  final int index;
  const BuyButton({Key? key, required this.snapshot, required this.update, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FakeBd bd = FakeBd();

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: (){
          bd.myCart.add(MyCartHelper(snapshot, SendToCart().qtd[index]!, SendToCart().size[index]!));
          print(SendToCart().qtd);
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
      ),
    );
  }
}
