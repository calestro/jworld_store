import 'package:flutter/material.dart';


class SignPage extends StatefulWidget {
  const SignPage({Key? key}) : super(key: key);

  @override
  State<SignPage> createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Image.asset("img/logo.png", scale: 1,),
          Text("Login"),
          Text("Email"),
          Text("Senha"),
          SizedBox(height: 10,),
          ElevatedButton(onPressed:(){}, child: Text("Login")),
          Text("Esqueceu a senha ?")

        ],
      ),
    );
  }
}
