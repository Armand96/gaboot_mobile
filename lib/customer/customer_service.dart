import 'package:gaboot_mobile/customer/customer_dto.dart';
import 'package:gaboot_mobile/customer/customer_model.dart';
import 'package:gaboot_mobile/services/api.dart';
import 'package:gaboot_mobile/services/response.dart';

class CustomerService {
  final String url = "customer";
  final String image = "image";
  final String thumbnail = "thumbnail";
  final String profile = "profile";

  Future<ResponseAPI<Customer>> login() async {
    final response = await API().getAPI<Customer>(
        url, (json) => Customer.fromJson(json as Map<String, dynamic>));
    return response;
  }

  Future<ResponseAPI<Customer>> create(int id, CustomerDTO param) async {
    final response = await API().postAPI<Customer>('$url/$id', param.toJson());
    return response;
  }

  Future<ResponseAPI<Customer>> update(int id, CustomerDTO param) async {
    final response = await API().patchAPI<Customer>('$url/$id', param.toJson());
    return response;
  }

  Future<ResponseAPI<Customer>> updateImage(
      int customerId, CustomerDTO param) async {
    // final response = await API().getAPI<Product>('$url?categoryId=$categoryId', (json) => Product.fromJson(json as Map<String, dynamic>));
    final response = await API()
        .patchAPI<Customer>('$url/$image/$customerId', param.toJson());
    return response;
  }

  Future<ResponseAPI<Customer>> getProfile(int customerId) async {
    // final response = await API().getAPI<Product>('$url?categoryId=$categoryId', (json) => Product.fromJson(json as Map<String, dynamic>));
    final response = await API().getAPI<Customer>('$url/$profile/$customerId',
        (json) => Customer.fromJson(json as Map<String, dynamic>));
    return response;
  }

  Future<ResponseAPI<Customer>> getImage(int id) async {
    final response = await API().getAPI<Customer>('$url/$image/$id',
        (json) => Customer.fromJson(json as Map<String, dynamic>));
    return response;
  }

  Future<ResponseAPI<Customer>> getThumbnail(int id) async {
    final response = await API().getAPI<Customer>('$url/$thumbnail/$id',
        (json) => Customer.fromJson(json as Map<String, dynamic>));
    return response;
  }
}
