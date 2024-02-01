import 'package:json_annotation/json_annotation.dart';

part 'response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class ResponseAPI<T> {
  List<T>? data;
  T? datum;
  final String message;
  final bool success;

  ResponseAPI(
      {this.data = const [],
      this.datum,
      required this.message,
      required this.success});

  factory ResponseAPI.fromJson(Map<String, dynamic> json, T Function(Object? json) fromJsonT) {
    return _$ResponseAPIFromJson(json, fromJsonT);
  }

  Map<String, dynamic> toJson(Object Function(T) toJsonT) {
    return _$ResponseAPIToJson(this, toJsonT);
  }
}

@JsonSerializable(genericArgumentFactories: true)
class ResponseAPI2<T> {
  T? data;
  final String message;
  final bool success;

  ResponseAPI2(
      {this.data,
      required this.message,
      required this.success});

  factory ResponseAPI2.fromJson(Map<String, dynamic> json, T Function(Object? json) fromJsonT) {
    return _$ResponseAPI2FromJson(json, fromJsonT);
  }

  Map<String, dynamic> toJson(Object Function(T) toJsonT) {
    return _$ResponseAPI2ToJson(this, toJsonT);
  }
}
