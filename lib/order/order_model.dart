import 'package:json_annotation/json_annotation.dart';

part 'order_model.g.dart';

@JsonSerializable()
class Order {
  int id;
  String name;
  int cartId;
  int customerId;
  String status;
  String expired;
  DateTime createdAt;
  DateTime updatedAt;

  Order({
    required this.id,
    required this.name,
    required this.cartId,
    required this.customerId,
    required this.status,
    required this.expired,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

  Map<String, dynamic> toJson() => _$OrderToJson(this);
}
