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
    final MyFunctions funct = MyFunctions();
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("img/logo.png",height: 50, ),
        centerTitle: true,
      ),
     body: Padding(
       padding: const EdgeInsets.all(12),
       child: SingleChildScrollView(
         child: LayoutBuilder(
           builder: (context, constraints){
             if(GlobalData().isMobile) {
               return Column(
                 mainAxisSize: MainAxisSize.max,
                 children: [
                   Container(
                     width: wd * .75,
                    padding: const EdgeInsets.all(5),
                     decoration: DescStyle().imageBack,
                     child: Container(
                       padding: const EdgeInsets.all(5),
                         decoration: DescStyle().image,
                         child: Image.asset(product.image[0], scale: 7,)
                     ),
                   ),
                   const SizedBox(height:20),
                   Text(product.name, style:DescStyle().title),
                   const SizedBox(height:20),
                   Text(product.description),
                   const SizedBox(height:20),
                   SizeSelector(sizes:funct.sizeTolist(index), update: update, indexStream: index),
                   const SizedBox(height:20),
                   Text(funct.priceConvert(product.price), style: DescStyle().price,),
                   const SizedBox(height:20),
                   Quantity(indexStream: index, hg: 40, wd: 55,),
                   const SizedBox(height:20),

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
                       Image.asset(product.image[0], width: wd /2,)
                     ],
                   ),
                   Column(
                     children: [
                       Text(product.name, style: DescStyle().title,),
                       Text(product.description,),
                       SizeSelector(sizes: funct.sizeTolist(index), update: update, indexStream: index),
                       Text(funct.priceConvert(product.price)),
                       Quantity(indexStream: index, hg: 40,wd:55),
                       SizedBox(
                           width: wd * .85,
                           child: BuyButton(snapshot: product, update:update, index: index)),

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
