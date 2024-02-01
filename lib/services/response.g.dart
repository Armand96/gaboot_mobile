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
      data:
          (json['data'] as List<dynamic>?)?.map(fromJsonT).toList() ?? const [],
      datum: _$nullableGenericFromJson(json['datum'], fromJsonT),
      message: json['message'] as String,
      success: json['success'] as bool,
    );

Map<String, dynamic> _$ResponseAPIToJson<T>(
  ResponseAPI<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'data': instance.data?.map(toJsonT).toList(),
      'datum': _$nullableGenericToJson(instance.datum, toJsonT),
      'message': instance.message,
      'success': instance.success,
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);

ResponseAPI2<T> _$ResponseAPI2FromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    ResponseAPI2<T>(
      data: _$nullableGenericFromJson(json['data'], fromJsonT),
      message: json['message'] as String,
      success: json['success'] as bool,
    );

Map<String, dynamic> _$ResponseAPI2ToJson<T>(
  ResponseAPI2<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'data': _$nullableGenericToJson(instance.data, toJsonT),
      'message': instance.message,
      'success': instance.success,
    };
