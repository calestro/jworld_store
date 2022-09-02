import 'package:flutter/material.dart';
import 'package:mobile_j_world/fake_bd/fake_bd.dart';

import '../../global_components/cart_animated.dart';

class QuantityCart extends StatefulWidget {
  final int index;
   const QuantityCart({Key? key,required this.index}) : super(key: key);

  @override
  State<QuantityCart> createState() => _QuantityCartState();
}

class _QuantityCartState extends State<QuantityCart> {
  late TextEditingController controller;
  late int qtd;
  FakeBd bd = FakeBd();
  @override
  void initState() {
    qtd = bd.myCart[widget.index].qtd;
    controller = TextEditingController();
    controller.text = qtd.toString();
    controller.addListener(() {
      qtd = int.parse(controller.text);
      bd.myCart[widget.index].qtd = qtd;
    });

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    qtd = bd.myCart[widget.index].qtd;
    controller.text = qtd.toString();

    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed:(){
            qtd--;
            controller.text = qtd.toString();
            bd.myCart[widget.index].qtd = qtd;
            setState(() {});
            CartAnimatedState.itemADD.value++;
            },
          icon: const Icon(Icons.arrow_back_ios, size: 10,),
        ),
        Container(
          width: 50,
          height: 20,
          color: Colors.transparent,
          child: TextFormField(
            controller: controller,
            enabled: false,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 12,
            ),
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
                label: const Text("QTD", style: TextStyle(fontSize: 10),),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(3),
                )
            ),
          ),
        ),

        IconButton(
          onPressed:(){
            qtd++;
            controller.text = qtd.toString();
            bd.myCart[widget.index].qtd = qtd;
            setState(() {});
            CartAnimatedState.itemADD.value++;
          },
          icon: const Icon(Icons.arrow_forward_ios, size: 10,),
        ),

      ],
    );
  }

}