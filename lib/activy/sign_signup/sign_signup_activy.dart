import 'package:flutter/material.dart';
import 'package:mobile_j_world/activy/sign_signup/backgound_custom_paint.dart';
import 'package:mobile_j_world/activy/sign_signup/components/login_or_signup.dart';
import 'package:mobile_j_world/activy/sign_signup/components/text_form.dart';


class SignPage extends StatefulWidget {
  const SignPage({Key? key}) : super(key: key);

  @override
  State<SignPage> createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
  bool isLogin = true;
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    double wd = MediaQuery.of(context).size.width;
    double hg = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Colors.red.shade600,
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
            SizedBox(
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


            AnimatedPositioned(
              duration: const Duration(milliseconds: 1000),
              top:250,
              left: isLogin ? 0 : wd * 2,
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
                        child: const Text("Login")
                    ),
                    const Text("Esqueceu a senha ?", style: TextStyle(color: Colors.white),)

                  ],
                ),
              ),
            ),

            AnimatedPositioned(
              duration: const Duration(milliseconds: 1000),
              top:250,
              left: !isLogin ? 0 : wd * 2,
              child: SizedBox(
                width: wd,
                height: hg/3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SignForm(size: wd * 0.7, controller: controller, label: "Email"),
                    SignForm(size: wd * 0.7, controller: controller, label: "Senha"),
                    SignForm(size: wd * 0.7, controller: controller, label: "Confirme a Senha"),
                    ElevatedButton(
                        onPressed:(){},
                        child: const Text("Cadstre-se")
                    ),


                  ],
                ),
              ),
            ),






            Positioned(
              bottom: -wd * 0.2,
                right: 0,
                child: GestureDetector(
                  onTap: (){setState(() {isLogin = !isLogin;});},
                    child: Changer(wd: wd, isLogin: isLogin)
                )
            ),
          ],
        ),
      ),
    );
  }
}
