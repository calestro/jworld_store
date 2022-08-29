import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import '../../fake_bd/fake_bd.dart';
import '../cart_page/cart_page.dart';


class CartAnimated extends StatefulWidget {
  const CartAnimated({Key? key}) : super(key: key);
  @override
  State<CartAnimated> createState() => CartAnimatedState();
}
class CartAnimatedState extends State<CartAnimated> {
  static ValueNotifier itemADD = ValueNotifier(0);
  FakeBd bd = FakeBd();
  @override
  void initState() {
    itemADD.addListener(() {
      if(mounted){setState(() {});}
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    int badge = 0;
    for (var element in bd.myCart) {
      badge = badge + element.qtd;
    }



    return Badge(
      badgeContent: Text(badge.toString(),
        style: const TextStyle(fontSize: 10, color: Colors.white, fontWeight: FontWeight.w800),),
      position: const BadgePosition(start: 40, bottom: 30),
      showBadge: bd.myCart.isEmpty ? false : true,
      badgeColor: Colors.redAccent,
      child: IconButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const CartPage()));
        },
        icon: const Icon(Icons.shopping_cart, color: Colors.white,size: 40,),
      ),
    );
  }
}
