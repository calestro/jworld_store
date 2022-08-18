import 'package:flutter/material.dart';
import 'dart:async';

import 'package:mobile_j_world/fake_bd/helper/Category.dart';


class FakeBd{
  static final _fakeBd = FakeBd._internal();
  factory FakeBd(){
    return _fakeBd;
  }
  FakeBd._internal();

  List <CategoryBd> category =[
    CategoryBd("Camisas", Icons.add),
    CategoryBd("Casacos", Icons.add),
    CategoryBd("Decoração", Icons.add),
  ];




}