import 'package:flutter/material.dart';

class SignForm extends StatelessWidget {
  final double size;
  final String label;
  final TextEditingController controller;
  const SignForm({Key? key,
    required this.size,
    required this.controller,
    required this.label
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final InputDecoration decoration =InputDecoration(
      fillColor: Colors.white,
      filled: true,
      hintText: label,
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.redAccent,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(30),
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30)
        )
      ),

    );



    return SizedBox(
      width: size,
      child: TextField(
        controller: controller,
        decoration:decoration,
      ),
    );
  }

}
