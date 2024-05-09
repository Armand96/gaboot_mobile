import 'package:json_annotation/json_annotation.dart';

part 'banner_model.g.dart';

@JsonSerializable()
class BannerM {
  String id;
  String name;
  String? imagePath;
  String? thumbnailPath;

  BannerM({
    required this.id,
    required this.name,
    this.imagePath,
    this.thumbnailPath
  });

  factory BannerM.fromJson(Map<String, dynamic> json) => _$BannerMFromJson(json);

  Map<String, dynamic> toJson() => _$BannerMToJson(this);
}