import 'package:flutter/material.dart';
import 'package:mobile_j_world/activy/sign_signup/backgound_custom_paint.dart';
import 'package:mobile_j_world/activy/sign_signup/components/text_form.dart';


class SignPage extends StatefulWidget {
  const SignPage({Key? key}) : super(key: key);

  @override
  State<SignPage> createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    double wd = MediaQuery.of(context).size.width;
    double hg = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        color: Colors.red.shade900,
        padding: MediaQuery.of(context).padding,
        child: Stack(
          children: [
           Positioned(
             top: 0,
               child: Image.asset("img/back.jpg",height: hg *.82,)),
            Container(
              width: wd,
              height: double.maxFinite,
              color: Colors.black.withOpacity(0.2),
            ),
            Container(
              width: double.maxFinite,
              height: double.maxFinite,
              child: CustomPaint(
                painter: CustomBackground(),
              ),),
            Positioned(
              top: 10,
              left: 15,
              right: 15,
                child: Image.asset("img/logo.png"),
            ),


            Positioned(
              bottom: hg * .12,
              child: SizedBox(
                width: wd,
                height: hg/3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SignForm(size: wd * 0.7, controller: controller, label: "Email"),
                    SignForm(size: wd * 0.7, controller: controller, label: "Senha"),
                    ElevatedButton(
                        onPressed:(){},
                        child: Text("Login")
                    ),
                    Text("Esqueceu a senha ?", style: TextStyle(color: Colors.white),)

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
