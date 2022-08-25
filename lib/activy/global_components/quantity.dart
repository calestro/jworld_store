import 'package:flutter/material.dart';
import 'package:mobile_j_world/activy/helper/send_to_cart.dart';

class Quantity extends StatefulWidget {
  final int indexStream;

  const Quantity({Key? key, required this.indexStream}) : super(key: key);

  @override
  State<Quantity> createState() => _QuantityState();
}

class _QuantityState extends State<Quantity> {
  int qtd = 1;
  late TextEditingController controller;
  SendToCart send = SendToCart();
  @override
  void initState() {
    controller = TextEditingController();
    controller.text = qtd.toString();
    send.qtd.addAll({widget.indexStream:qtd});
    controller.addListener(() {
      qtd = int.parse(controller.text);
      send.qtd.addAll({widget.indexStream:qtd});
    });

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    controller.text = qtd.toString();
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
            onPressed:(){
              qtd--;
              controller.text = qtd.toString();
              send.qtd.addAll({widget.indexStream:qtd});
              setState(() {});
            },
            icon: Icon(Icons.arrow_back_ios, size: 10,),
        ),
        Container(
          width: 50,
          height: 20,
          color: Colors.transparent,
          child: TextFormField(
            controller: controller,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
            ),
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              label: Text("QTD", style: TextStyle(fontSize: 10),),
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
            setState(() {});
            send.qtd.addAll({widget.indexStream:qtd});
          },
          icon: Icon(Icons.arrow_forward_ios, size: 10,),
        ),

      ],
    );
  }
}
