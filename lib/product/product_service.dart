import 'package:gaboot_mobile/product/product_model.dart';
import 'package:gaboot_mobile/services/api.dart';
import 'package:gaboot_mobile/services/response.dart';

class ProductService {
  final String url = "products";

  Future<ResponseAPI<Product>> getProducts() async {
    final response = await API().getAPI<Product>(
        url, (json) => Product.fromJson(json as Map<String, dynamic>));
    return response;
  }

  Future<ResponseAPI<Product>> getProductByCategory(String categoryId) async {
    final response = await API().getAPI<Product>('$url?categoryId=$categoryId',
        (json) => Product.fromJson(json as Map<String, dynamic>));
    return response;
  }

  Future<ResponseAPI<Product>> getProduct(String id) async {
    final response = await API().getAPI<Product>(
        '$url/$id', (json) => Product.fromJson(json as Map<String, dynamic>));
    return response;
  }
}
