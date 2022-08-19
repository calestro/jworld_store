import 'package:flutter/material.dart';

class ProductsBd{
  final String name;
  final String description;
  final double price;
  final Map<String,int> size;
  final List<AssetImage> image;


  ProductsBd(this.name, this.description, this.price, this.size,this.image);
}