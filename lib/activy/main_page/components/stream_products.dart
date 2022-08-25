import 'package:flutter/material.dart';
import 'package:mobile_j_world/activy/desc_page/desc_activy.dart';
import 'package:mobile_j_world/activy/global_components/buy_button.dart';
import 'package:mobile_j_world/activy/global_components/quantity.dart';
import 'package:mobile_j_world/activy/global_components/size_selector.dart';
import 'package:mobile_j_world/activy/main_page/style.dart';
import 'package:mobile_j_world/activy/function.dart';
import 'package:mobile_j_world/fake_bd/fake_bd.dart';




class StreamProducts extends StatefulWidget {
  final Function update;

  const StreamProducts({Key? key, required this.update}) : super(key: key);

  @override
  State<StreamProducts> createState() => _StreamProductsState();
}

class _StreamProductsState extends State<StreamProducts> {
  @override
  Widget build(BuildContext context) {

    FakeBd bd = FakeBd();
    MyFunctions funct = MyFunctions();
    return GridView.builder(
      itemCount: bd.products.length,
        padding: const EdgeInsets.only(top: 15),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          mainAxisExtent: 360,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
      itemBuilder: (context,index){

        return GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context)=>DescActivy(
                    product: bd.products[index],
                    update:(){setState(() {widget.update();});},
                    index: index,
                  )));
            },
            child: Container(
              margin: const EdgeInsets.only(bottom: 10),
              decoration:MainAppStyle().tileProducts,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:[
                  //Image
                 Image.asset(
                   bd.products[index].image[0],width: 120,
                 ),
                  //text
                  Text(
                      bd.products[index].name, style: MainAppStyle().textProductName
                  ),

                  //size select
                  SizeSelector(
                    sizes: funct.sizeTolist(index),
                    update: widget.update,
                    indexStream:index
                  ),

                  //qtd
                  Quantity(
                    indexStream: index
                  ),

                  //price
                  Text(
                      funct.priceConvert(bd.products[index].price),
                      style:const TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w600
                      )
                  ),

                  const SizedBox(height: 10),

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
