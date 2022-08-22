import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mobile_j_world/activy/components/app_bar_search.dart';
import 'package:mobile_j_world/activy/components/category_menu.dart';
import 'package:mobile_j_world/activy/components/delegate_build.dart';
import 'package:mobile_j_world/activy/components/stream_products.dart';



//Minha View Principal
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  ScrollController scroll = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        controller: scroll,
        headerSliverBuilder: (context,innerBoxIsScrolled) {
          return [
          //App Bar Title
            SliverAppBar(
            title: Image.asset("img/logo.png", scale: 4,),
              centerTitle: true,
              pinned: false,
              floating: false,
              toolbarHeight: 96,
              backgroundColor: Colors.red,
              stretch: true,
          ),
            SliverPersistentHeader(
                pinned: true,
                floating: true,
                delegate: DelegateClass(
                  child: AppBarSearch(update: update),
                )
            ),
            //Menu
            SliverToBoxAdapter(
              child: CategoryMenu(),
            ),
          ];
        },
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            //conteudo
            Expanded(
                child: StreamProducts(update:update),
            ),
          ],
        ),
      ),
    );
  }
  void update(){
    setState(() {

    });
  }

}



