import 'package:flutter/material.dart';
import 'package:mobile_j_world/activy/cart_page/components/cart_quantity.dart';
import 'package:mobile_j_world/activy/cart_page/components/cupom.dart';
import 'package:mobile_j_world/activy/cart_page/style.dart';
import 'package:mobile_j_world/activy/function.dart';
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
    MyFunctions funct = MyFunctions();
    double hg = MediaQuery.of(context).size.height;
    bd.myCart.removeWhere((element) => element.qtd == 0);
    double total = 0;
    for (var element in bd.myCart) {
      total = total + element.qtd * element.product.price;
    }
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
            const Center(
              child: Text("Ainda não tem nenhum produto", style:TextStyle( fontSize:15),),
            )
                :
            ListView.builder(
              shrinkWrap: true,
              itemCount: bd.myCart.length,
              itemBuilder: (context, index){


                return Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                      child: Container(
                        width: double.maxFinite,
                        height: 142,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color:Colors.grey.withOpacity(0.05),
                          border: Border.all(color: Colors.black54.withOpacity(0.1)),
                          borderRadius: const BorderRadius.all(Radius.circular(20))
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(bd.myCart[index].product.name, style: CartStyle().titleCart,),

                                  QuantityCart(
                                      index: index,
                                      update:(){setState(() {widget.update();});}),

                                  Text(funct.priceConvert(bd.myCart[index].product.price * bd.myCart[index].qtd),
                                    style: CartStyle().price,
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Image.asset(bd.myCart[index].product.image[0], width:70),
                                    Container(
                                      alignment: Alignment.center,
                                      width: 21,
                                      height: 21,
                                      decoration: CartStyle().boxSize,
                                      child: Text(bd.myCart[index].size,
                                        textAlign: TextAlign.center,
                                        style: CartStyle().sizeText,),
                                    )
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
                              setState(() {widget.update();});
                              },
                            icon: const Icon(Icons.close))),
                  ],
                );
              },
            ),
          ),
          SizedBox(height: hg * 0.148652),

          Container(
            height: hg * 0.07,
            width: double.maxFinite,
            color: Colors.red.shade700,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(bd.myCart.isEmpty ? "R\$ 0,00" :
                  funct.priceConvert(total),
                      textAlign: TextAlign.center,
                      style:CartStyle().allTotal
                  ),
                ),
                Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: ElevatedButton(
                          onPressed: (){},
                          child: Text("Continuar")),
                    ))

              ],
            ),
          ),



        ],
      ),
    );
  }

}
