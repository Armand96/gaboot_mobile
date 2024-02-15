import 'package:json_annotation/json_annotation.dart';

part 'customer_dto.g.dart';

@JsonSerializable()
class CustomerDTO {
  String firstname;
  String lastname;
  String username;
  String email;
  String phoneNumber;
  String addressDetail;
  double latitude;
  double longitude;
  String password;

  CustomerDTO({
    required this.firstname,
    required this.lastname,
    required this.username,
    required this.email,
    required this.phoneNumber,
    required this.addressDetail,
    required this.latitude,
    required this.longitude,
    required this.password,
  });

  factory CustomerDTO.fromJson(Map<String, dynamic> json) =>
      _$CustomerDTOFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerDTOToJson(this);
}
