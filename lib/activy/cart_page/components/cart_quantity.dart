import 'package:flutter/material.dart';
import 'package:mobile_j_world/fake_bd/fake_bd.dart';

class QuantityCart extends StatefulWidget {
  final int index;
  final Function update;
   const QuantityCart({Key? key,required this.index, required this.update}) : super(key: key);

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
            setState(() {widget.update();});
            },
          icon: Icon(Icons.arrow_back_ios, size: 10,),
        ),
        Container(
          width: 50,
          height: 20,
          color: Colors.transparent,
          child: TextFormField(
            controller: controller,
            enabled: false,
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
            bd.myCart[widget.index].qtd = qtd;
            setState(() {widget.update();});
          },
          icon: Icon(Icons.arrow_forward_ios, size: 10,),
        ),

      ],
    );
  }

}