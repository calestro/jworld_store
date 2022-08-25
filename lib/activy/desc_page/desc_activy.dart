import 'package:flutter/material.dart';
import 'package:mobile_j_world/activy/desc_page/style.dart';
import 'package:mobile_j_world/activy/function.dart';
import 'package:mobile_j_world/activy/global_components/buy_button.dart';
import 'package:mobile_j_world/activy/global_components/quantity.dart';
import 'package:mobile_j_world/activy/global_components/size_selector.dart';
import 'package:mobile_j_world/fake_bd/helper/products.dart';
import 'package:mobile_j_world/global_data.dart';


class DescActivy extends StatelessWidget {
  final ProductsBd product;
  final Function update;
  final int index;
  const DescActivy({Key? key,
    required this.product,
    required this.index,
    required this.update,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double wd = MediaQuery.of(context).size.width;
    final double hg = MediaQuery.of(context).size.height;
    final MyFunctions funct = MyFunctions();
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("img/logo.png",height: 50, ),
        centerTitle: true,
      ),
     body: Padding(
       padding: EdgeInsets.all(12),
       child: SingleChildScrollView(
         child: LayoutBuilder(
           builder: (context, constraints){
             if(GlobalData().isMobile) {
               return Column(
                 mainAxisSize: MainAxisSize.max,
                 children: [
                   Container(
                     width: wd * .75,
                    padding: EdgeInsets.all(5),
                     decoration: DescStyle().imageBack,
                     child: Container(
                       padding: EdgeInsets.all(5),
                         decoration: DescStyle().image,
                         child: Image.asset(product.image[0], scale: 7,)
                     ),
                   ),
                   SizedBox(height:20),
                   Text(product.name, style:DescStyle().title),
                   SizedBox(height:20),
                   Text(product.description),
                   SizedBox(height:20),
                   SizeSelector(sizes:funct.sizeTolist(index), update: update, indexStream: index),
                   SizedBox(height:20),
                   Text(funct.priceConvert(product.price), style: DescStyle().price,),
                   SizedBox(height:20),
                   Quantity(indexStream: index, hg: 40, wd: 55,),
                   SizedBox(height:20),

                   SizedBox(
                     width: wd * .85,
                       child: BuyButton(snapshot: product, update:update, index: index)),

                 ],
               );
             }
             else{
               return Row(
                 children: [
                   Column(
                     children: [
                       Text("Imagem")
                     ],
                   ),
                   Column(
                     children: [
                       Text("Nome"),
                       Text("Preço"),
                       Text("Comprar"),
                       Text("Descrição"),
                     ],
                   ),
                 ],
               );

             }
           },
         ),
       ),
     ),
    );
  }
}
