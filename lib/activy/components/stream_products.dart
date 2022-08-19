import 'package:flutter/material.dart';
import 'package:mobile_j_world/fake_bd/fake_bd.dart';



class StreamProducts extends StatelessWidget {
  const StreamProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FakeBd bd = FakeBd();
    return GridView.builder(
      itemCount: bd.products.length,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
      itemBuilder: (context,index){
          return Container(
            height: 50,
            child: Column(
              children:[
                //Image
               Image.asset(bd.products[index].image[0], height: 100,),
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
