import 'package:json_annotation/json_annotation.dart';

part 'customer_model.g.dart';

@JsonSerializable()
class Customer {
  String id;
  String firstname;
  String lastname;
  String username;
  String email;
  String phoneNumber;
  String addressDetail;
  double latitude;
  double longitude;
  String password;
  String token;
  bool isActive;
  String imgPath;
  String imgThumbPath;
  DateTime createdAt;
  DateTime updatedAt;

  Customer(
      {required this.id,
      required this.firstname,
      required this.lastname,
      required this.username,
      required this.email,
      required this.phoneNumber,
      required this.addressDetail,
      required this.latitude,
      required this.longitude,
      required this.password,
      required this.token,
      required this.isActive,
      required this.imgPath,
      required this.imgThumbPath,
      required this.createdAt,
      required this.updatedAt});

  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerToJson(this);
}
