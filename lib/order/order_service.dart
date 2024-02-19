import 'package:gaboot_mobile/order/order_model.dart';
import 'package:gaboot_mobile/services/api.dart';
import 'package:gaboot_mobile/services/response.dart';

class CategoryService {
  final String url = "order";

  Future<ResponseAPI<Order>> create(Order param) async {
    final response = await API().postAPI<Order>(url, param.toJson());
    return response;
  }

  Future<ResponseAPI<Order>> update(int id, Order param) async {
    final response = await API().patchAPI<Order>('$url/$id', param.toJson());
    return response;
  }

  Future<ResponseAPI<Order>> getOrders() async {
    final response = await API().getAPI<Order>(
        url, (json) => Order.fromJson(json as Map<String, dynamic>));
    return response;
  }

  Future<ResponseAPI<Order>> getOrder(int id) async {
    final response = await API().getAPI<Order>(
        '$url/$id', (json) => Order.fromJson(json as Map<String, dynamic>));
    return response;
  }
}
