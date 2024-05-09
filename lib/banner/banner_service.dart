import 'package:gaboot_mobile/banner/banner_model.dart';
import 'package:gaboot_mobile/services/api.dart';
import 'package:gaboot_mobile/services/response.dart';

class BannerService {
  final String url = "banner";

  Future<ResponseAPI<BannerM>> getBanners() async {
    final response = await API().getAPI<BannerM>(url, (json) => BannerM.fromJson(json as Map<String, dynamic>));
    return response;
  }

  Future<ResponseAPI<BannerM>> getBanner(int id) async {
    final response = await API().getAPI<BannerM>('$url/$id', (json) => BannerM.fromJson(json as Map<String, dynamic>));
    return response;
  }
}