import 'package:gaboot_mobile/wishlist/wishlist_model.dart';
import 'package:gaboot_mobile/services/api.dart';
import 'package:gaboot_mobile/services/response.dart';

class WishlistService {
  final String url = "wishlist";

  Future<ResponseAPI<Wishlist>> create(Wishlist param) async {
    final response = await API().postAPI<Wishlist>(url, param.toJson());
    return response;
  }

  Future<ResponseAPI<Wishlist>> getWishlists() async {
    final response = await API().getAPI<Wishlist>(url, (json) => Wishlist.fromJson(json as Map<String, dynamic>));
    return response;
  }

  Future<ResponseAPI<Wishlist>> getWishlist(int id) async {
    final response = await API().getAPI<Wishlist>('$url/$id', (json) => Wishlist.fromJson(json as Map<String, dynamic>));
    return response;
  }

  Future<ResponseAPI<Wishlist>> update(int id, Wishlist param) async {
    final response = await API().patchAPI<Wishlist>('$url/$id', param.toJson());
    return response;
  }

  Future<ResponseAPI<Wishlist>> remove(int id) async {
    final response = await API().deleteAPI<Wishlist>('$url/$id');
    return response;
  }
}
