import 'package:flutter/material.dart';
import 'package:mobile_j_world/activy/main_page/drawer/components/button_drawer.dart';


class DrawerContents extends StatelessWidget {
  const DrawerContents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        CircleAvatar(
          radius: 70,
            backgroundColor: Colors.white,
            child: Image.asset("img/no_user.png", fit: BoxFit.fitWidth,)
        ),
        const Text("Unknow User", style: TextStyle(fontSize: 22),),
        const SizedBox(height: 20),
        GridView(
            gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
            ),
          shrinkWrap: true,
          children: [
            ButtonDrawer(wd: 60, text: "Pedidos", navigatorWidget: Container(), iconData: Icons.check_box),
            ButtonDrawer(wd: 60, text: "Endereços", navigatorWidget: Container(), iconData: Icons.check_box),
            ButtonDrawer(wd: 60, text: "Pagamentos", navigatorWidget: Container(), iconData: Icons.check_box),
            ButtonDrawer(wd: 60, text: "Configurações", navigatorWidget: Container(), iconData: Icons.check_box),
          ],
        ),
        SizedBox(height: 20),

        const Text("Sair")
      ],
    );
  }
}
