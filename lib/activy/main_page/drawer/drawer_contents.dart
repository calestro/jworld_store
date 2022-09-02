import 'package:flutter/material.dart';


class DrawerContents extends StatelessWidget {
  const DrawerContents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        CircleAvatar(
          radius: 90,
            backgroundColor: Colors.white,
            child: Image.asset("img/no_user.png", fit: BoxFit.fitWidth,)
        ),
        Text("Unknow User", style: TextStyle(fontSize: 22),),
        SizedBox(height: 20),
        Text("Pedidos"),
        Text("Atualizar informações"),
        Text("Configurações"),
        Text("Sair")
      ],
    );
  }
}
