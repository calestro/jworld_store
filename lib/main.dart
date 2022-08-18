import 'package:flutter/material.dart';

import 'maintence_view.dart';


// iniciando o sistema e criando o theme data
void main(){
  runApp(MaterialApp(
    home:MaintenceView(),
    theme:ThemeData(
      colorScheme: ThemeData().colorScheme.copyWith(
    primary: Colors.red,
  ),
  ),
  ));
}