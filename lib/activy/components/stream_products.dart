import 'package:flutter/material.dart';
import 'package:mobile_j_world/activy/components/style.dart';
import 'package:mobile_j_world/fake_bd/fake_bd.dart';



class StreamProducts extends StatelessWidget {
  const StreamProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FakeBd bd = FakeBd();
    final double wd = MediaQuery.of(context).size.width;
    int crossXGrid = wd.toInt();
    return GridView.builder(
      itemCount: bd.products.length,
        scrollDirection: Axis.vertical,
        physics: ScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 250,
          mainAxisExtent: 250,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
      itemBuilder: (context,index){
          return Container(
            margin: EdgeInsets.all(10),
            decoration:MainAppStyle().tileProducts,
            child: Column(
              children:[
                //Image
               Image.asset(bd.products[index].image[0],width: 120,),
                //text
                Text(bd.products[index].name),

                //price
                Text(bd.products[index].price.toString()),
              ]


            ),
          );
      },
    );
  }
}
