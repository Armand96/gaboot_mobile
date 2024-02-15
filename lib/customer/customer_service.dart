import 'package:gaboot_mobile/customer/customer_model.dart';
import 'package:gaboot_mobile/services/api.dart';
import 'package:gaboot_mobile/services/response.dart';

class CustomerService {
  final String url = "customer";

  Future<ResponseAPI<Customer>> login() async {
    final response = await API().getAPI<Customer>(
        url, (json) => Customer.fromJson(json as Map<String, dynamic>));
    return response;
  }

  Future<ResponseAPI<Customer>> update(int id, Customer param) async {
    final response = await API().patchAPI<Customer>('$url/$id', param.toJson());
    return response;
  }

  Future<ResponseAPI<Customer>> getProfile(int customerId) async {
    // final response = await API().getAPI<Product>('$url?categoryId=$categoryId', (json) => Product.fromJson(json as Map<String, dynamic>));
    final response = await API().getAPI<Customer>(
        url, (json) => Customer.fromJson(json as Map<String, dynamic>));
    return response;
  }

  Future<ResponseAPI<Customer>> getCustomer(int id) async {
    final response = await API().getAPI<Customer>(
        '$url/$id', (json) => Customer.fromJson(json as Map<String, dynamic>));
    return response;
  }
}
