import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mobile_j_world/activy/main_page/components/app_bar_search.dart';
import 'package:mobile_j_world/activy/main_page/components/category_menu.dart';
import 'package:mobile_j_world/activy/helper/delegate_build.dart';
import 'package:mobile_j_world/activy/main_page/components/stream_products.dart';
import 'package:mobile_j_world/activy/sign_signup/sign_signup_activy.dart';
import 'package:mobile_j_world/global_data.dart';



//Minha View Principal
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {
    GlobalData data = GlobalData();
    return Stack(
      children: [
        Scaffold(
          body: NestedScrollView(
            headerSliverBuilder: (context,innerBoxIsScrolled) {
              return [
              //App Bar Title
                SliverAppBar(
                title: Image.asset("img/logo.png", scale: 5,),
                  centerTitle: true,
                  pinned: false,
                  floating: false,

                  //mobile
                  leading: GlobalData().isMobile ? Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.all(11),
                    child: GestureDetector(
                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> SignPage()));
                      },
                        child: Icon(Icons.menu, size: 40,)
                    ),
                  ): null,

                  toolbarHeight: 80,
                  backgroundColor: Colors.red,
                  stretch: true,
              ),
                SliverPersistentHeader(
                    pinned: true,
                    floating: true,
                    delegate: DelegateClass(
                      childPinned:AppBarSearch(update: update),
                      child:CategoryMenu(),
                    )
                ),
              ];
            },
            body: StreamProducts(update:update),
          ),
        ),
      ],
    );
  }
  void update(){
    setState(() {

    });
  }

}



