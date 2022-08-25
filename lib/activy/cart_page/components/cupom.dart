import 'package:flutter/material.dart';


class Cupom extends StatelessWidget {
  final Function update;
  const Cupom({Key? key, required this.update}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 80,
          height: 30,
          alignment: Alignment.center,
          child: const TextField(
            textAlignVertical: TextAlignVertical.center,
            style: TextStyle(
              fontSize: 16,
            ),
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
            ),
          ),
        ),
      ],
    );
  }
}
