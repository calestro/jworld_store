import 'package:flutter/material.dart';
import 'package:mobile_j_world/activy/global_components/cart_animated.dart';
import 'package:mobile_j_world/activy/main_page/style.dart';
import 'package:mobile_j_world/global_data.dart';

import '../../../fake_bd/fake_bd.dart';
import '../search_controller/controller.dart';

// Barra do Search MainPage
class AppBarSearch extends StatelessWidget {

  const AppBarSearch({Key? key}) : super(key: key);

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
              controller: ControllerSearch.searchController,
              cursorColor: Colors.black,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
              decoration: MainAppStyle.inputStyle,
            ),
          ),
          const CartAnimated(),
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
