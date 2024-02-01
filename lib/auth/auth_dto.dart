import 'package:json_annotation/json_annotation.dart';

part 'auth_dto.g.dart';

@JsonSerializable()
class AuthDTO{
  String username;
  String password;

  AuthDTO({required this.username, required this.password});

  factory AuthDTO.fromJson(Map<String, dynamic> json) => _$AuthDTOFromJson(json);

  Map<String, dynamic> toJson() => _$AuthDTOToJson(this);
}