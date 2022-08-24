import 'package:flutter/material.dart';
import 'package:mobile_j_world/activy/helper/send_to_cart.dart';

class SizeSelector extends StatefulWidget {
  final List<String> sizes;
  final int indexStream;
  final Function update;
  SizeSelector(
      {Key? key, required this.sizes, required this.update, required this.indexStream})
      : super(key: key);

  @override
  State<SizeSelector> createState() => _SizeSelectorState();
}

class _SizeSelectorState extends State<SizeSelector> {
  late String selectedSize;
  SendToCart send = SendToCart();
@override
  void initState() {
    selectedSize = widget.sizes[0];
    send.size.addAll({widget.indexStream:selectedSize});
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: List.generate(
          widget.sizes.length,
              (index) {
                return Padding(
            padding: const EdgeInsets.all(5.0),
            child: Material(
              child: InkWell(
                borderRadius: BorderRadius.circular(3),
                onTap: () {
                  selectedSize = widget.sizes[index];
                  setState((){});
                  send.size.addAll({
                    widget.indexStream:selectedSize
                  }
                  );
                },
                child: Ink(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: selectedSize == widget.sizes[index]
                          ? Color(0xFF667EEA)
                          : Color(0xFFF3F3F3),
                      borderRadius: BorderRadius.circular(3)),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      widget.sizes[index],
                      style:TextStyle(
                          color: selectedSize == widget.sizes[index]
                              ? Colors.white
                              : Colors.black87,
                        fontSize: 12,

                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
              }),
    );
  }
}