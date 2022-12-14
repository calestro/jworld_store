import 'package:flutter/material.dart';
import 'package:mobile_j_world/activy/helper/send_to_cart.dart';

class SizeSelector extends StatefulWidget {
  final List<String> sizes;
  static ValueNotifier itemAdd = ValueNotifier(0);
  final int indexStream;
  const SizeSelector(
      {Key? key, required this.sizes, required this.indexStream})
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
    SizeSelector.itemAdd.addListener(() {
      if(mounted){setState(() {}); }
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    send.size[widget.indexStream] = selectedSize;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
          widget.sizes.length,
              (index) {
                return Padding(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: Material(
              child: InkWell(
                borderRadius: BorderRadius.circular(3),
                onTap: () {
                  selectedSize = widget.sizes[index];
                  SizeSelector.itemAdd.value++;
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
                          ? Colors.red
                          : const Color(0xFFF3F3F3),
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