import 'package:json_annotation/json_annotation.dart';

part 'payment_model.g.dart';

@JsonSerializable()
class Payment {
  String id;
  String name;
  String transactionId;
  String merchantId;
  String paymentType;
  String description;
  String transactionTime;
  String transactionStatus;
  String fraudStatus;
  String bank;
  String vaNumber;
  String currency;
  String expiry_time;
  DateTime createdAt;
  DateTime updatedAt;

  Payment({
    required this.id,
    required this.name,
    required this.transactionId,
    required this.merchantId,
    required this.paymentType,
    required this.description,
    required this.transactionTime,
    required this.transactionStatus,
    required this.fraudStatus,
    required this.bank,
    required this.vaNumber,
    required this.currency,
    required this.expiry_time,
    required this.createdAt,
    required this.updatedAt
  });

  factory Payment.fromJson(Map<String, dynamic> json) => _$PaymentFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentToJson(this);

}