import 'package:flutter/material.dart';
import 'package:mobile_j_world/activy/helper/cart_helper.dart';
import 'dart:async';

import 'package:mobile_j_world/fake_bd/helper/category.dart';

import 'helper/products.dart';


class FakeBd{
  static final _fakeBd = FakeBd._internal();
  factory FakeBd(){
    return _fakeBd;
  }
  FakeBd._internal();

  List <CategoryBd> category =[
    CategoryBd("Camisas", Icons.account_tree_sharp),
    CategoryBd("Casacos", Icons.ac_unit_rounded),
    CategoryBd("Decoração", Icons.add),
    CategoryBd("Figures", Icons.add),
    CategoryBd("Cosplay", Icons.add),
  ];
  List<ProductsBd> products = [

    ProductsBd(
        "Camisa ",
        "Camisa Especial do GitHub - Feita de material 100% algodão",
        28.8,
        {
          "M":10,
          "P":10,
          "G":0,
        },
        [
          "img/products/git.png",
          "img/products/git2.jpg",
        ]
        ),

    ProductsBd(
        "Camisa ",
        "Camisa Especial do GitHub - Feita de material 100% algodão",
        28.8,
        {
          "M":10,
          "P":10,
          "G":10,
        },
        [
          "img/products/git.png",
          "img/products/git2.jpg",
        ]
        ),

    ProductsBd(
        "Camisa ",
        "Camisa Especial do GitHub - Feita de material 100% algodão",
        28.8,
        {
          "M":10,
          "P":10,
          "G":10,
        },
        [
          "img/products/git.png",
          "img/products/git2.jpg",
        ]
    ),
    ProductsBd(
        "Camisa ",
        "Camisa Especial do GitHub - Feita de material 100% algodão",
        28.8,
        {
          "M":10,
          "P":10,
          "G":10,
        },
        [
          "img/products/git.png",
          "img/products/git2.jpg",
        ]
    ),
    ProductsBd(
        "Camisa ",
        "Camisa Especial do GitHub - Feita de material 100% algodão",
        28.8,
        {
          "M":10,
          "P":10,
          "G":10,
        },
        [
          "img/products/git.png",
          "img/products/git2.jpg",
        ]
    ),
    ProductsBd(
        "Camisa ",
        "Camisa Especial do GitHub - Feita de material 100% algodão",
        28.8,
        {
          "M":10,
          "P":10,
          "G":10,
        },
        [
          "img/products/git.png",
          "img/products/git2.jpg",
        ]
    ),
  ];

  List<MyCartHelper> myCart = [];






}