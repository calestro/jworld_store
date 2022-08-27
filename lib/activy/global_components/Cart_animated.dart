import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import '../../fake_bd/fake_bd.dart';
import '../cart_page/cart_page.dart';


class CartAnimated extends StatelessWidget {
  final Function update;
  const CartAnimated({Key? key, required this.update}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FakeBd bd = FakeBd();
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
                  builder: (context) => CartPage(update:update)));
        },
        icon: const Icon(Icons.shopping_cart, color: Colors.white,size: 40,),
      ),
    );
  }
}
