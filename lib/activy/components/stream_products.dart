import 'package:flutter/material.dart';
import 'package:mobile_j_world/activy/components/buy_button.dart';
import 'package:mobile_j_world/activy/components/quantity.dart';
import 'package:mobile_j_world/activy/components/size_selector.dart';
import 'package:mobile_j_world/activy/components/style.dart';
import 'package:mobile_j_world/activy/function.dart';
import 'package:mobile_j_world/activy/helper/send_to_cart.dart';
import 'package:mobile_j_world/fake_bd/fake_bd.dart';

import '../helper/cart_helper.dart';



class StreamProducts extends StatefulWidget {
  final update;
  const StreamProducts({Key? key, required this.update}) : super(key: key);

  @override
  State<StreamProducts> createState() => _StreamProductsState();
}

class _StreamProductsState extends State<StreamProducts> {
  @override
  Widget build(BuildContext context) {
    FakeBd bd = FakeBd();
    final double wd = MediaQuery.of(context).size.width;
    MyFunctions funct = MyFunctions();
    return GridView.builder(
      itemCount: bd.products.length,
        scrollDirection: Axis.vertical,
        physics: ScrollPhysics(),
        padding: EdgeInsets.only(top: 15),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 300,
          mainAxisExtent: 340,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
      itemBuilder: (context,index){

        return GestureDetector(
            onTap: (){},
            child: Container(
              margin: EdgeInsets.only(bottom: 10),
              decoration:MainAppStyle().tileProducts,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:[
                  //Image
                 Image.asset(bd.products[index].image[0],width: 120,),
                  //text
                  Text(bd.products[index].name, style: MainAppStyle().textProductName),

                  //size select
                  SizeSelector(
                    sizes: funct.sizeTolist(index),
                    update: widget.update,
                    indexStream:index
                  ),

                  //qtd
                  Quantity(indexStream: index,),

                  //price
                  Text(funct.priceConvert(bd.products[index].price)),

                  //buttons
                  BuyButton(
                      snapshot:bd.products[index],
                      index: index,
                      update:widget.update
                  ),
                ]


              ),
            ),
          );
      },
    );
  }
}
