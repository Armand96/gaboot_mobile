import 'package:gaboot_mobile/wishlist/wishlist_model.dart';
import 'package:gaboot_mobile/services/api.dart';
import 'package:gaboot_mobile/services/response.dart';

class CategoryService {
  final String url = "wishlist";

  Future<ResponseAPI<Payment>> create(Wishlist param) async {
    final response = await API().postAPI<Payment>(url, param.toJson());
    return response;
  }

  Future<ResponseAPI<Payment>> getWishlists() async {
    final response = await API().getAPI<Payment>(url);
    return response;
  }

  Future<ResponseAPI<Payment>> getWishlist(int id) async {
    final response = await API().getAPI<Payment>('$url/$id');
    return response;
  }

  Future<ResponseAPI<Payment>> update(int id, Wishlist param) async {
    final response = await API().pacthAPI<Payment>('$url/$id', param.toJson());
    return response;
  }

  Future<ResponseAPI<Payment>> remove(int id) async {
    final response = await API().deleteAPI<Payment>('$url/$id');
    return response;
  }
}
