import 'package:gaboot_mobile/services/config.dart';
import 'package:gaboot_mobile/services/response.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class API {
  Dio dio = Dio();

  Future<ResponseAPI<T>> getAPI<T>(String url, T Function(Object? json) fromJson) async {
    // print(Config().baseUrl);
    try {
      print(Config().baseUrl + url);
      final response = await dio.get(Config().baseUrl + url);
      print("RESPONSE: $response");
      final data = ResponseAPI.fromJson(response.data, fromJson);
      return data;
    } catch (e) {
      print('Error fetching data: $e');
      rethrow;
    }
  }

  Future<ResponseAPI<T>> postAPI<T>(
      String url, Map<String, dynamic> params) async {
    final response = await dio.post(Config().baseUrl + url, data: params);
    final data = ResponseAPI<T>.fromJson(response.data, (json) => json as T);
    return data;
  }

  Future<ResponseAPI<T>> patchAPI<T>(
      String url, Map<String, dynamic> params) async {
    final response = await dio.patch(Config().baseUrl + url, data: params);
    final data = ResponseAPI<T>.fromJson(response.data, (json) => json as T);
    return data;
  }

  Future<ResponseAPI<T>> deleteAPI<T>(String url) async {
    final response = await dio.delete(Config().baseUrl + url);
    final data = ResponseAPI<T>.fromJson(response.data, (json) => json as T);
    return data;
  }

  Future<ResponseAPI2<T>> postAPI2<T>(
      String url, Map<String, dynamic> params, T Function(Object? json) fromJson) async {
    final response = await dio.post(Config().baseUrl + url, data: params);
    final data = ResponseAPI2<T>.fromJson(response.data, fromJson);
    return data;
  }

  void headerInterceptor() {
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async {
        // Modify headers or add new headers before sending the request
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        // final String token = prefs.getString("jwt");
        if(prefs.getString("jwt") != null) {
          options.headers['Authorization'] = 'Bearer $prefs.getString("jwt")';
        }

        // You can also modify other request options if needed
        // options.baseUrl = 'https://api.example.com';

        return handler.next(options); // Pass the modified options to the next interceptor or to the request
      },
      onResponse: (response, handler) {
        // Handle the response or modify it if needed
        return handler.next(response); // Pass the response to the next interceptor or to the caller
      },
      onError: (DioException e, handler) {
        // Handle errors or modify the error if needed
        return handler.next(e); // Pass the error to the next interceptor or to the caller
      },
    ));
  }

  onErrorz(error) {
    print(error);
  }

  /* CONVERT OBJECT TO GET PARAMS */
  searchParam(Map<String, dynamic> dataSearch) {
    String stringParams = "?";

    dataSearch.forEach((key, value) {
      stringParams += '$key=$value&';
    });

    stringParams = stringParams.substring(0, stringParams.length - 1);
    return stringParams;
  }
}
