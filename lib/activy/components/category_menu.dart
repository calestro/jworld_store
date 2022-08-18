import 'package:flutter/material.dart';

import '../../fake_bd/fake_bd.dart';



class CategoryMenu extends StatelessWidget {
  const CategoryMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FakeBd bd = FakeBd();
    return Container(
      width: 800,
      height: 400,
      child:
      ListView.builder(
                itemCount: bd.category.length,
                itemBuilder: (context, index){
                  return Text(bd.category[index].name, style: TextStyle(fontSize: 30, color: Colors.black),);
                }
            )

      );

  }
}
