import 'package:json_annotation/json_annotation.dart';

part 'product_model.g.dart';

@JsonSerializable()
class Product {
  String id;
  String name;
  String description;
  double price;
  int stock;
  String dimension;
  double weight;
  String weightUnit;
  String categoryId;
  // int totalSales;
  // bool isActive;
  // DateTime createdAt;
  // DateTime updatedAt;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.stock,
    required this.dimension,
    required this.weight,
    required this.weightUnit,
    required this.categoryId,
    // required this.totalSales,
    // required this.isActive,
    // required this.createdAt,
    // required this.updatedAt,
  });

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);

}