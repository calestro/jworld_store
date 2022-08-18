import 'package:flutter/material.dart';

import 'activy/main_page.dart';


// Vai Configurar minhas Activy de acordo com o dispositivo
class MaintenceView extends StatefulWidget {
  const MaintenceView({Key? key}) : super(key: key);

  @override
  State<MaintenceView> createState() => _MaintenceViewState();
}

class _MaintenceViewState extends State<MaintenceView> {
  @override
  Widget build(BuildContext context) {
    return MainPage();
  }
}
