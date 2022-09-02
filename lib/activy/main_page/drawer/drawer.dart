// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:mobile_j_world/activy/main_page/drawer/drawer_contents.dart';
import 'package:mobile_j_world/activy/main_page/main_page.dart';
import 'package:mobile_j_world/activy/sign_signup/sign_signup_activy.dart';



class MyCustomDrawer extends StatelessWidget {
  const MyCustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      style: DrawerStyle.style3,
      menuScreen: const MenuDrawer(),
      mainScreen: const MainPage(),
      borderRadius: 30.0,
      showShadow: true,
      angle: 0,
      duration: const Duration(milliseconds: 620),
      menuScreenTapClose: true,
      androidCloseOnBackTap: true,
      menuBackgroundColor: Colors.red.shade600,
      slideWidth: MediaQuery.of(context).size.width * .75,
      openCurve: Curves.easeIn,
      closeCurve: Curves.easeInOut,
    );
  }
}

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isLogin = false;
    return Container(
      padding: MediaQuery.of(context).padding,
      margin: const EdgeInsets.all(20),
      child:!isLogin ? const DrawerContents() : Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            // ignore: prefer_const_constructors
            onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=> SignPage())),
              child:Container(
                height: 200,
                padding:const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.red.shade900.withOpacity(.5),
                  borderRadius: const BorderRadius.all(Radius.circular(20)
                  )
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 40,
                      child: Image.asset("img/no_user.png", fit: BoxFit.cover,),
                    ),
                    const SizedBox(height: 20),
                    const Text("Olá, faça Login ou cadastre-se",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                          fontWeight: FontWeight.w600
                        )),
                  ],
                ),
              ),

            )
          ],
        ),
      );

  }
}

