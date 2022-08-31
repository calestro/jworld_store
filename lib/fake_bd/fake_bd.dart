import 'package:flutter/material.dart';
import 'package:mobile_j_world/activy/helper/cart_helper.dart';
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
    CategoryBd("Cosplay", Icons.add,)
  ];
  List<ProductsBd> products = [

    ProductsBd(
        "Camisa Fresh Punch",
        "Camisa Especial Fresh Punch - Feita de material 100% algodão",
        26.6,
        {
          "M":10,
          "P":10,
          "G":0,
        },

        [
          "img/products/fresh_punch.png",
          "img/products/fresh_punch_2.png",
        ],
        [
          "one punch man",
          "camisa",
          "anime",
        ]
        ),
      ProductsBd(
        "Camisa yu-Gi-Oh ",
        "Camisa Especial do Yugioh - Feita de material 100% algodão",
        32.2,
        {
          "M":10,
          "P":10,
          "G":7,
        },

        [
          "img/products/yugioh.png",
          "img/products/yugioh_2.png",
        ],
        [
          "yugioh",
          "yu-gi-oh",
          "yu gi oh",
          "camisa",
          "anime",
        ]
        ),
    ProductsBd(
        "Camisa J Stars ",
        "Camisa Especial do J-Stars - Feita de material 100% algodão",
        32.2,
        {
          "M":10,
          "P":10,
          "G":7,
        },

        [
          "img/products/j-stars.png",
          "img/products/j_stars_2.png",
        ],
      [
        "animes",
        "camisa",
        "jstars",
      ]
        ),
  ];

  List<MyCartHelper> myCart = [];






}