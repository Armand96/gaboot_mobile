// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      stock: json['stock'] as int,
      dimension: json['dimension'] as String,
      weight: (json['weight'] as num).toDouble(),
      weightUnit: json['weightUnit'] as String,
      categoryId: json['categoryId'] as int,
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'stock': instance.stock,
      'dimension': instance.dimension,
      'weight': instance.weight,
      'weightUnit': instance.weightUnit,
      'categoryId': instance.categoryId,
    };

ResponseAPIProduct _$ResponseAPIProductFromJson(Map<String, dynamic> json) =>
    ResponseAPIProduct(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      datum: json['datum'] == null
          ? null
          : Product.fromJson(json['datum'] as Map<String, dynamic>),
      message: json['message'] as String,
      success: json['success'] as bool,
    );

Map<String, dynamic> _$ResponseAPIProductToJson(ResponseAPIProduct instance) =>
    <String, dynamic>{
      'data': instance.data,
      'datum': instance.datum,
      'message': instance.message,
      'success': instance.success,
    };
