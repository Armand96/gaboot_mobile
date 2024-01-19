import 'package:json_annotation/json_annotation.dart';

part 'response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class ResponseAPI<T> {
  final List<T> data;
  final T datum;
  final String message;
  final bool success;

  ResponseAPI(
      {required this.data,
      required this.datum,
      required this.message,
      required this.success});

  factory ResponseAPI.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$ResponseAPIFromJson<T>(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T) toJsonT) =>
      _$ResponseAPIToJson<T>(this, toJsonT);
}
