// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Customer _$CustomerFromJson(Map<String, dynamic> json) => Customer(
      id: json['id'] as String,
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      phoneNumber: json['phoneNumber'] as String,
      addressDetail: json['addressDetail'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      password: json['password'] as String,
      token: json['token'] as String,
      isActive: json['isActive'] as bool,
      imgPath: json['imgPath'] as String,
      imgThumbPath: json['imgThumbPath'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$CustomerToJson(Customer instance) => <String, dynamic>{
      'id': instance.id,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'username': instance.username,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'addressDetail': instance.addressDetail,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'password': instance.password,
      'token': instance.token,
      'isActive': instance.isActive,
      'imgPath': instance.imgPath,
      'imgThumbPath': instance.imgThumbPath,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
