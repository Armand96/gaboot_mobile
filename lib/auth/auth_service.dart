import 'package:gaboot_mobile/auth/auth_dto.dart';
import 'package:gaboot_mobile/auth/auth_model.dart';
import 'package:gaboot_mobile/services/api.dart';
import 'package:gaboot_mobile/services/response.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CustomerService {
  final String url = "auth";
  final String lgn = "login";
  
  Future<SharedPreferences> prefs() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs;
  }

  Future<ResponseAPI2<Auth>> login(AuthDTO param) async {
    final response = await API().postAPI2<Auth>('$url/$lgn', param.toJson(), (json) => Auth.fromJson(json as Map<String, dynamic>));
    final pfs = await prefs();
    print(response.data!.toJson());
    await pfs.setString("jwt", response.data!.token);
    return response;
  }
}
