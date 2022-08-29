
class ProductsBd{
  final String name;
  final String description;
  final double price;
  final Map<String,int> size;
  final List<String> image;
  late double _qtd;



  ProductsBd(this.name, this.description, this.price, this.size,this.image);

  double get qtd {
    _qtd = 0;
    size.forEach((key, value) {
      _qtd = _qtd + value;
    });
    return _qtd;
  }
}