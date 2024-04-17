import 'package:json_annotation/json_annotation.dart';

part 'wishlist_model.g.dart';

@JsonSerializable()
class Wishlist {
  String id;
  int productId;
  String category;
  DateTime createdAt;
  DateTime updatedAt;

  Wishlist({
    required this.id,
    required this.productId,
    required this.category,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Wishlist.fromJson(Map<String, dynamic> json) =>
      _$WishlistFromJson(json);

  Map<String, dynamic> toJson() => _$WishlistToJson(this);
}
