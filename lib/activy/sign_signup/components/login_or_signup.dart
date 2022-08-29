import 'package:flutter/material.dart';


class Changer extends StatelessWidget {
  final double wd;
  final bool isLogin;
  const Changer({Key? key, required this.wd, required this.isLogin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(.4),
          borderRadius: const BorderRadius.all(Radius.circular(180))
      ),
      child: Container(
        width: wd-16,
        padding: EdgeInsets.only(top: wd * .04),
        alignment: Alignment.topCenter,
        height: wd * 0.32,
        decoration: BoxDecoration(
            color: Colors.red.shade800,
            borderRadius: const BorderRadius.all(Radius.circular(180))
        ),
        child: Text( isLogin ? "Cadastre-se": "Faça Login !", textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
