import 'package:flutter/material.dart';
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
    CategoryBd("Camisas", Icons.add),
    CategoryBd("Casacos", Icons.add),
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




}