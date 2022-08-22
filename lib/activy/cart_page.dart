import 'package:flutter/material.dart';
import 'package:mobile_j_world/activy/components/style.dart';
import 'package:mobile_j_world/fake_bd/fake_bd.dart';



class CartPage extends StatefulWidget {
  final Function update;
  const CartPage({Key? key, required this.update}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    FakeBd bd = FakeBd();
    double hg = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Image.asset("img/logo.png",height: 50, ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: hg * 0.65,
            child: bd.myCart.isEmpty ?
            Center(
              child: Text("Ainda não tem nenhum produto", style:TextStyle( fontSize:15),),
            )
                :
            ListView.builder(
              shrinkWrap: true,
              itemCount: bd.myCart.length,
              itemBuilder: (context, index){
                print(bd.myCart.length);

                return Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 5, left: 10, right: 10),
                      child: Container(
                        width: double.maxFinite,
                        height: 120,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black54.withOpacity(0.1)),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(bd.myCart[index].name),
                                  Text("Quantidade:"),
                                  Text("Size"),
                                  Text(MainAppStyle().priceConvert(bd.myCart[index].price)),
                                ],
                              ),
                            ),
                            Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Image.asset(bd.myCart[index].image[0], width: 70,),
                                  ],
                                )
                            )
                          ],
                        )
                      ),
                    ),
                    Positioned(
                        top:0,
                        right: 5,
                        child: IconButton(
                            onPressed: (){
                              bd.myCart.removeAt(index);
                              setState(() {});
                              widget.update();
                              },
                            icon: Icon(Icons.close))),
                  ],
                );
              },
            ),
          ),

          SizedBox(
            height: hg * 0.2,
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,

              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Endereço de Entrega"),
                    Text("Cupom"),
                    Text("Total"),
                  ],
                ),
                Text("Button Continuar")

              ],
            ),
          ),



        ],
      ),
    );
  }
}
