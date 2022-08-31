import 'package:flutter/material.dart';
import 'package:mobile_j_world/activy/helper/send_to_cart.dart';

// ignore: must_be_immutable
class Quantity extends StatefulWidget {
  final int indexStream;
  double wd;
  double hg;
  Quantity({Key? key, required this.indexStream, this.wd = 50, this.hg = 20}) : super(key: key);

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
      setState(() {});
    });

    super.initState();
  }




  @override
  Widget build(BuildContext context) {

    controller.text = qtd.toString();

    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
            onPressed:(){
              if(qtd > 1){qtd--;}
              controller.text = qtd.toString();
              send.qtd.addAll({widget.indexStream:qtd});
              setState(() {});
            },
            icon: const Icon(Icons.arrow_back_ios, size: 16,),
        ),
        Container(
          width: widget.wd,
          height: widget.hg,
          color: Colors.transparent,
          child: TextFormField(
            enabled: false,
            controller: controller,
            textAlign: TextAlign.center,
            style:TextStyle(
              fontSize: widget.wd < 52 ? 12 : 16,
            ),
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              label: Text("QTD", style: TextStyle(fontSize:widget.wd < 52 ? 10 : 14, ),),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none
            ),
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
          icon: const Icon(Icons.arrow_forward_ios, size: 16,),
        ),

      ],
    );
  }
}
