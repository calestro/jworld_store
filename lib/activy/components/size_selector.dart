import 'package:flutter/material.dart';

class SizeSelector extends StatelessWidget {
  final List<String> sizes;
  final Function update;
  String selectedSize = "M";
  SizeSelector(
      {Key? key, required this.sizes, required this.update})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: List.generate(
          sizes.length,
              (index) => Padding(
            padding: const EdgeInsets.all(5.0),
            child: Material(
              child: InkWell(
                borderRadius: BorderRadius.circular(3),
                onTap: () {
                  selectedSize = sizes[index];
                  update();
                },
                child: Ink(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: selectedSize == sizes[index]
                          ? Color(0xFF667EEA)
                          : Color(0xFFF3F3F3),
                      borderRadius: BorderRadius.circular(3)),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      sizes[index],
                      style:TextStyle(
                          color: selectedSize == sizes[index]
                              ? Colors.white
                              : Colors.black87,
                        fontSize: 12,

                      ),
                    ),
                  ),
                ),
              ),
            ),
          )),
    );
  }
}