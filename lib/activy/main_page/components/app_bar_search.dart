import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:mobile_j_world/activy/cart_page/cart_page.dart';
import 'package:mobile_j_world/activy/main_page/style.dart';
import 'package:mobile_j_world/global_data.dart';

import '../../../fake_bd/fake_bd.dart';

// Barra do Search MainPage
class AppBarSearch extends StatelessWidget {
 final Function update;
  const AppBarSearch({Key? key, required this.update}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int badge = 0;
    FakeBd bd = FakeBd();
    TextEditingController searchController = TextEditingController();
    for (var element in bd.myCart) {
      badge = badge + element.qtd;
    }
    return Container(
      color: Colors.red,
      width: MediaQuery.of(context).size.width,
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            height: 50,
            child: TextField(
              controller: searchController,
              cursorColor: Colors.black,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
              decoration: MainAppStyle().inputStyle,
            ),
          ),

          Badge(
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
          ),
          const SizedBox(
            width: 10,
          ),
          GlobalData().isMobile ? const SizedBox(): SizedBox(
            child: Container(
              width: 100,
              height: 40,
              alignment: AlignmentDirectional.bottomEnd,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          )

        ],
      ),
    );
  }
}