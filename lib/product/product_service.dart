import 'package:dio/dio.dart';
import 'package:gaboot_mobile/product/product_model.dart';
import 'package:gaboot_mobile/services/api.dart';
import 'package:gaboot_mobile/services/config.dart';
import 'package:gaboot_mobile/services/response.dart';

class ProductService {
  final String url = "products";

  Future<ResponseAPI<Product>> getProducts() async {
    API<Product> api = API<Product>();
    final response = await api.getAPI(url, (json) => Product.fromJson(json as Map<String, dynamic>));
    return response;
  }

  Future<ResponseAPI<Product>> getProduct(int id) async {
    API<Product> api = API<Product>();
    final response = await api.getAPI('$url/$id', (json) => Product.fromJson(json as Map<String, dynamic>));
    return response;
  }
}
