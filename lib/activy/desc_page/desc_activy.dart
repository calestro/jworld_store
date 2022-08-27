import 'package:flutter/material.dart';
import 'package:mobile_j_world/activy/desc_page/components/slider.dart';
import 'package:mobile_j_world/activy/desc_page/style.dart';
import 'package:mobile_j_world/activy/function.dart';
import 'package:mobile_j_world/activy/global_components/cart_animated.dart';
import 'package:mobile_j_world/activy/global_components/buy_button.dart';
import 'package:mobile_j_world/activy/global_components/quantity.dart';
import 'package:mobile_j_world/activy/global_components/size_selector.dart';
import 'package:mobile_j_world/fake_bd/helper/products.dart';
import 'package:mobile_j_world/global_data.dart';

import '../main_page/tag_hero.dart';


class DescActivy extends StatefulWidget {
  final ProductsBd product;
  final Function update;
  final int index;
  const DescActivy({Key? key,
    required this.product,
    required this.index,
    required this.update,
  }) : super(key: key);

  @override
  State<DescActivy> createState() => _DescActivyState();
}

class _DescActivyState extends State<DescActivy> {
  @override
  Widget build(BuildContext context) {
    final double wd = MediaQuery.of(context).size.width;
    final MyFunctions funct = MyFunctions();
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("img/logo.png",height: 50, ),
        centerTitle: true,
        toolbarHeight: 60,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CartAnimated(update: (){setState(() {widget.update();});}),
          )
        ],
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
                     width: wd,
                    padding: const EdgeInsets.all(5),
                     decoration: DescStyle().imageBack,
                     child: Container(
                       padding: const EdgeInsets.all(5),
                         decoration: DescStyle().image,
                         child: Hero(
                             tag: TagHero.imageProduct(widget.product.image[0],widget.index),
                             child:CarrouselSlider(imgList:widget.product.image))
                     ),
                   ),
                   const SizedBox(height:20),
                   Text(widget.product.name, style:DescStyle().title),
                   const SizedBox(height:20),
                   Text(widget.product.description, textAlign: TextAlign.center,),
                   const SizedBox(height:40),
                   Row(
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       Expanded(
                         flex: 1,
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.start,
                           mainAxisSize: MainAxisSize.min,
                           children: [
                             SizeSelector(sizes:funct.sizeTolist(widget.index), update: widget.update, indexStream: widget.index),
                             const SizedBox(height:20),
                             Quantity(indexStream: widget.index, hg: 48, wd: 55,),
                             const SizedBox(height:20),
                           ],
                         ),
                       ),
                       Expanded(
                         flex: 1,
                           child: Padding(
                             padding: EdgeInsets.only(bottom: 28, left: 10, right: 10),
                             child: Container(
                               padding: EdgeInsets.all(3),
                               decoration: DescStyle().priceContainerBack,
                               child: Container(
                                    padding: EdgeInsets.all(3),
                                   alignment: Alignment.center,
                                   decoration: DescStyle().priceContainer,
                                   child: Text(funct.priceConvert(widget.product.price),
                                     style: DescStyle().price,)
                               ),
                             ),
                           )),
                       const SizedBox(height:20),
                     ],
                   ),
                 ],
               );
             }
             else{
               return Row(
                 children: [
                   Column(
                     children: [
                       Image.asset(widget.product.image[0], width: wd /2,)
                     ],
                   ),
                   Row(
                     children: [
                       Expanded(
                         flex: 2,
                         child: Column(
                           children: [
                             Text(widget.product.name, style: DescStyle().title,),
                             Text(widget.product.description,),
                             SizeSelector(sizes: funct.sizeTolist(widget.index), update: widget.update, indexStream: widget.index),
                             Text(funct.priceConvert(widget.product.price)),
                             Quantity(indexStream: widget.index, hg: 40,wd:55),
                           ],
                         ),
                       ),

                     ],
                   ),
                 ],
               );

             }
           },
         ),
       ),
     ),
      bottomNavigationBar: BuyButton(snapshot: widget.product,
        update: (){setState(() {widget.update();});},
        index: widget.index,
        hg:50,
        isRadius: false,),
    );
  }
}
