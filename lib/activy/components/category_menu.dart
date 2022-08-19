import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mobile_j_world/activy/components/style.dart';

import '../../fake_bd/fake_bd.dart';



class CategoryMenu extends StatelessWidget {
  const CategoryMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double wd =MediaQuery.of(context).size.width;
    FakeBd bd = FakeBd();
    return Container(
      width: double.infinity,
      height: 80,
      child: ListView.builder(
                itemCount: bd.category.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,

                itemBuilder: (context, index){
                  return Padding(
                    padding: EdgeInsets.only(
                        top: 10,
                        right:28,
                        left:5,
                    ),
                    child: Container(
                      width: 80,
                      decoration: MainAppStyle().menuCategory,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                              child: Icon(bd.category[index].icon),
                          ),
                          Expanded(
                              child: Text(bd.category[index].name,
                                style: TextStyle(fontSize: 12),
                              )
                          ),
                        ],
                      ),
                      
                    ),
                  );
                }
            )

      );

  }
}
