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
    return Center(
      child: Container(
        width: wd,
        alignment: Alignment.center,
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
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 2,
                                child: Icon(bd.category[index].icon,
                                  color: Colors.white,
                                ),
                            ),
                            Expanded(
                                child: Text(bd.category[index].name,
                                  style:MainAppStyle().textMenuCategory,
                                )
                            ),
                          ],
                        ),
                        
                      ),
                    );
                  }
              )

        ),
    );

  }
}
