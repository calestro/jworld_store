import 'package:flutter/material.dart';
import 'package:wakelock/wakelock.dart';

import 'maintence_view.dart';


// iniciando o sistema e criando o theme data
void main(){
  WidgetsFlutterBinding.ensureInitialized();
  Wakelock.enable();
  runApp(MaterialApp(
    home:MaintenceView(),
    theme:ThemeData(
      colorScheme: ThemeData().colorScheme.copyWith(
    primary: Colors.red,
  ),
  ),
  ));
}