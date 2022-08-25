import 'package:flutter/material.dart';
import 'package:mobile_j_world/global_data.dart';
import 'package:wakelock/wakelock.dart';

import 'activy/main_page/main_page.dart';


// Vai Configurar minhas Activy de acordo com o dispositivo
class MaintenceView extends StatefulWidget {
  const MaintenceView({Key? key}) : super(key: key);

  @override
  State<MaintenceView> createState() => _MaintenceViewState();
}
class _MaintenceViewState extends State<MaintenceView> {
  @override
  Widget build(BuildContext context) {
  if(MediaQuery.of(context).size.width < 800) {
    setState(() {
      GlobalData().isMobile = true;
    });
  }
    else{
    setState(() {
      GlobalData().isMobile = false;
    });
  }


    return MainPage();
  }
}
