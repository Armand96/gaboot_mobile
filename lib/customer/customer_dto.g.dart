// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerDTO _$CustomerDTOFromJson(Map<String, dynamic> json) => CustomerDTO(
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      phoneNumber: json['phoneNumber'] as String,
      addressDetail: json['addressDetail'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      password: json['password'] as String,
    );

Map<String, dynamic> _$CustomerDTOToJson(CustomerDTO instance) =>
    <String, dynamic>{
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'username': instance.username,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'addressDetail': instance.addressDetail,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'password': instance.password,
    };
