import 'package:gaboot_mobile/auth/auth_model.dart';
import 'package:gaboot_mobile/services/api.dart';
import 'package:gaboot_mobile/services/response.dart';

class CustomerService {
  final String url = "auth";

  Future<ResponseAPI<Auth>> login() async {
    final response = await API().getAPI<Auth>(
        url, (json) => Auth.fromJson(json as Map<String, dynamic>));
    return response;
  }
}
