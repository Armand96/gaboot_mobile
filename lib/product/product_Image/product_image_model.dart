import 'package:json_annotation/json_annotation.dart';

part 'product_image_model.g.dart';

@JsonSerializable()
class ProductImage {
  String id;
  String imagePath;
  String thumbnailPath;
  String productId;
  String updatedAt;
  String createdAt;

  ProductImage({
    required this.id,
    required this.imagePath,
    required this.thumbnailPath,
    required this.productId,
    required this.updatedAt,
    required this.createdAt,
  });

  factory ProductImage.fromJson(Map<String, dynamic> json) => _$ProductImageFromJson(json);

  Map<String, dynamic> toJson() => _$ProductImageToJson(this);
}