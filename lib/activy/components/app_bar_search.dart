import 'package:flutter/material.dart';
import 'package:mobile_j_world/activy/components/style.dart';

// Barra do Search MainPage
class AppBarSearch extends StatelessWidget {
  const AppBarSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    return Container(
      color: Colors.red,
      padding: EdgeInsets.only(top: 6),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: 50,
            child: TextField(
              controller: searchController,
              cursorColor: Colors.black,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              decoration: MainAppStyle().inputStyle,
            ),
          ),
          Icon(Icons.shopping_cart_rounded, size: 40,)
        ],
      ),
    );
  }
}
