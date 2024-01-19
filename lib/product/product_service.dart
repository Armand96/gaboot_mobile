import 'package:dio/dio.dart';
import 'package:gaboot_mobile/product/product_model.dart';
import 'package:gaboot_mobile/services/api.dart';
import 'package:gaboot_mobile/services/config.dart';
import 'package:gaboot_mobile/services/response.dart';

class ProductService {
  final String url = "products";

  Future<ResponseAPIProduct> getProducts() async {
    final response = await Dio().get(Config().baseUrl + url);
    final data = ResponseAPIProduct.fromJson(response.data);
    return data;
  }

  Future<ResponseAPIProduct> getProduct(int id) async {
    final response = await Dio().get("$Config().baseUrl$url/$id.toString()");
    final data = ResponseAPIProduct.fromJson(response.data);
    return data;
  }

  // MASIH BELOM BISA!!!
  /* Future<ResponseAPI<Product>> testGetProducts() async {
    API<Product> api = API<Product>();
    final response = await api.getAPI(url, (json) => Product.fromJson(json));
    return response;
  } */
  
}