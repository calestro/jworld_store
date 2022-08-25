

class SendToCart{
  static final SendToCart _send =  SendToCart._internal();
  factory SendToCart(){
    return _send;
  }
  SendToCart._internal();
  Map<int,String> size={};
  Map<int,int> qtd ={};

}