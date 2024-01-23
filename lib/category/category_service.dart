import 'package:gaboot_mobile/category/category_model.dart';
import 'package:gaboot_mobile/services/api.dart';
import 'package:gaboot_mobile/services/response.dart';

class CategoryService {
  final String url = "category";

  Future<ResponseAPI<Category>> getCategories() async {
    API<Category> api = API<Category>();
    final response = await api.getAPI(url, (json) => Category.fromJson(json as Map<String, dynamic>));
    return response;
  }

  Future<ResponseAPI<Category>> getCategory(int id) async {
    API<Category> api = API<Category>();
    final response = await api.getAPI('$url/$id', (json) => Category.fromJson(json as Map<String, dynamic>));
    return response;
  }
}
