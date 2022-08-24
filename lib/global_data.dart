import 'package:flutter/material.dart';


class GlobalData{
  static final GlobalData _data = GlobalData._internal();
  factory GlobalData(){
    return _data;
  }
  GlobalData._internal();


  bool isMobile = false;
}