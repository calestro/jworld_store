import 'package:flutter/material.dart';
import 'package:mobile_j_world/activy/helper/cart_helper.dart';
import 'package:mobile_j_world/fake_bd/fake_bd.dart';
import 'package:mobile_j_world/fake_bd/helper/products.dart';


class MyFunctions{

  late MyCartHelper cart;
  late FakeBd bd = FakeBd();

  insertCart(ProductsBd, qtd, size){
    cart = MyCartHelper(ProductsBd, qtd, size);
  }

  sizeTolist(index){
    List<String> sizes = [];
    bd.products[index].size.forEach((key, value) {
      if(value != 0) {
        sizes.add(key);
      }
    });
    return sizes;
  }





}