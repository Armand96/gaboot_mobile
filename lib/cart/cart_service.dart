import 'package:gaboot_mobile/cart/cart_model.dart';
import 'package:gaboot_mobile/services/api.dart';
import 'package:gaboot_mobile/services/response.dart';

class CategoryService {
  final String url = "cart";

  Future<ResponseAPI<Cart>> create(Cart param) async {
    final response = await API().postAPI<Cart>(url, param.toJson());
    return response;
  }

  Future<ResponseAPI<Cart>> update(int id, Cart param) async {
    final response = await API().patchAPI<Cart>('$url/$id', param.toJson());
    return response;
  }

  Future<ResponseAPI<Cart>> remove(int id) async {
    final response = await API().deleteAPI<Cart>('$url/$id');
    return response;
  }

  Future<ResponseAPI<Cart>> getCarts() async {
    final response = await API().getAPI<Cart>(
        url, (json) => Cart.fromJson(json as Map<String, dynamic>));
    return response;
  }

  Future<ResponseAPI<Cart>> getCart(int id) async {
    final response = await API().getAPI<Cart>(
        '$url/$id', (json) => Cart.fromJson(json as Map<String, dynamic>));
    return response;
  }
}
