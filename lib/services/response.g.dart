// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseAPI<T> _$ResponseAPIFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    ResponseAPI<T>(
      data: (json['data'] as List<dynamic>).map(fromJsonT).toList(),
      datum: fromJsonT(json['datum']),
      message: json['message'] as String,
      success: json['success'] as bool,
    );

Map<String, dynamic> _$ResponseAPIToJson<T>(
  ResponseAPI<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'data': instance.data.map(toJsonT).toList(),
      'datum': toJsonT(instance.datum),
      'message': instance.message,
      'success': instance.success,
    };
