import 'package:flutter/material.dart';
import 'package:mobile_j_world/activy/components/app_bar_search.dart';
import 'package:mobile_j_world/activy/components/category_menu.dart';
import 'package:mobile_j_world/activy/components/stream_products.dart';



//Minha View Principal
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    double wd = MediaQuery.of(context).size.width;
    double hg = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        //title: Image.asset("img/logo"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Container(
        width: wd,
        height: hg,
        child: Column(
          children: [
            //search bar
            AppBarSearch(),

            //menu category
            CategoryMenu(),


            //conteudo
            StreamProducts(),
          ],
        ),
      ),
    );
  }
}
