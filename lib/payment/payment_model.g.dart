// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Payment _$PaymentFromJson(Map<String, dynamic> json) => Payment(
      id: json['id'] as String,
      name: json['name'] as String,
      transactionId: json['transactionId'] as String,
      merchantId: json['merchantId'] as String,
      paymentType: json['paymentType'] as String,
      description: json['description'] as String,
      transactionTime: json['transactionTime'] as String,
      transactionStatus: json['transactionStatus'] as String,
      fraudStatus: json['fraudStatus'] as String,
      bank: json['bank'] as String,
      vaNumber: json['vaNumber'] as String,
      currency: json['currency'] as String,
      expiry_time: json['expiry_time'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$PaymentToJson(Payment instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'transactionId': instance.transactionId,
      'merchantId': instance.merchantId,
      'paymentType': instance.paymentType,
      'description': instance.description,
      'transactionTime': instance.transactionTime,
      'transactionStatus': instance.transactionStatus,
      'fraudStatus': instance.fraudStatus,
      'bank': instance.bank,
      'vaNumber': instance.vaNumber,
      'currency': instance.currency,
      'expiry_time': instance.expiry_time,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
