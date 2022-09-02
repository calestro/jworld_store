import 'package:flutter/material.dart';
import 'package:mobile_j_world/fake_bd/fake_bd.dart';

class ControllerSearch {
  FakeBd bd = FakeBd();
  static TextEditingController searchController = TextEditingController();

  List search() {
    if (searchController.text == "") {
      return bd.products;
    }
    else {
      String search = searchController.text.toLowerCase();
      List searchList = [];
      List searchArray = searchFormat(search);
      for (var element in bd.products) {
        if (searchTest(searchArray, element.search)) {
          searchList.add(element);
        }
      }
      return searchList;
    }
  }

  List searchFormat(String text) {
    List search = [];
    String generator = "";
    text = text.toLowerCase();
    for (int i = 0; text.length > i; i++) {
      generator = generator + text.substring(i, i + 1);
      search.addAll(generator.split(" "));
    }
    search.removeWhere((element) => element == " ");


    return search;
  }
  


  bool searchTest(List searchArray, List searchList) {
    List formart = [];
    int coalition = 0;
    int different = 0;
    for (var element in searchList) {
      formart.addAll(searchFormat(element));
    }
      for (var element in searchArray) {
        if(formart.contains(element)){
          coalition++;
        }
        else{
          different++;
        }
      }



    return coalition > different * 2;
  }
}