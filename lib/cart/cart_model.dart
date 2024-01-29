import 'package:json_annotation/json_annotation.dart';

part 'cart_model.g.dart';

@JsonSerializable()
class Cart {
  int id;
  int customerId;
  int productId;
  double price;
  int quantity;
  DateTime createdAt;
  DateTime updatedAt;

  Cart(
      {required this.id,
      required this.customerId,
      required this.productId,
      required this.price,
      required this.quantity,
      required this.createdAt,
      required this.updatedAt});

  factory Cart.fromJson(Map<String, dynamic> json) => _$CartFromJson(json);

  Map<String, dynamic> toJson() => _$CartToJson(this);
}
