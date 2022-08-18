import 'package:flutter/material.dart';


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
      body: Column(
        children: [
          //Logo e painel de login
          //search bar
          //menu


          //conteudo
        ],
      ),
    );
  }
}
