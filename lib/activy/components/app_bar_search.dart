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
      width: MediaQuery.of(context).size.width,
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
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
        ],
      ),
    );
  }
}
