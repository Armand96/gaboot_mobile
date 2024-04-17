// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Order _$OrderFromJson(Map<String, dynamic> json) => Order(
      id: json['id'] as String,
      name: json['name'] as String,
      cartId: json['cartId'] as int,
      customerId: json['customerId'] as int,
      status: json['status'] as String,
      expired: json['expired'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'cartId': instance.cartId,
      'customerId': instance.customerId,
      'status': instance.status,
      'expired': instance.expired,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
