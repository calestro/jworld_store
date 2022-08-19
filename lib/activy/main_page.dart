import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
  ScrollController scroll = ScrollController();
  double size = 0;
  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    double wd = MediaQuery.of(context).size.width;
    double hg = MediaQuery.of(context).size.height;



    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        controller: scroll,
        headerSliverBuilder: (context,innerBoxIsScrolled) {

          return [
          SliverAppBar(
            //title: Image.asset("img/logo"),
            centerTitle: true,
            backgroundColor: Colors.red,
            stretch: true,
          ),

            SliverAppBar(
              snap: true,
              pinned: true,
              floating: true,
              centerTitle: true,
              collapsedHeight: 60,
              title: AppBarSearch(),
              scrolledUnderElevation: 0,
            ),

            SliverToBoxAdapter(
              child: CategoryMenu(),
            )
          ];
        },
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            //conteudo
            Expanded(
                child: StreamProducts()
            ),
          ],
        ),
      ),
    );
  }

}
