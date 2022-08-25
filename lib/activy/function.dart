import 'package:mobile_j_world/activy/helper/cart_helper.dart';
import 'package:mobile_j_world/activy/helper/send_to_cart.dart';
import 'package:mobile_j_world/fake_bd/fake_bd.dart';



class MyFunctions{

  late MyCartHelper cart;
  late FakeBd bd = FakeBd();
  SendToCart send = SendToCart();

  insertCart(snapshot,index){
    bool isExist = false;
    for (var element in bd.myCart) {
     if(element.product == snapshot && element.size == send.size[index]){
       element.qtd++;
       isExist = true;
     }

   }
    if(!isExist) {
      bd.myCart.add(
          MyCartHelper(snapshot, send.qtd[index]!, send.size[index]!));
    }
  }

  sizeTolist(index){
    List<String> sizes = [];
    bd.products[index].size.forEach((key, value) {
      if(value != 0) {
        sizes.add(key);
      }
    });
    return sizes;
  }
  String priceConvert (double price) {
    String stringPrice = price.toStringAsFixed(2);
    stringPrice = "R\$ ${stringPrice.replaceAll(".", ",")}";
    return stringPrice;
  }







}