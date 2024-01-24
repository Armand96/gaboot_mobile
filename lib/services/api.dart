import 'package:gaboot_mobile/services/config.dart';
import 'package:gaboot_mobile/services/response.dart';
import 'package:dio/dio.dart';

class API{
  Future<ResponseAPI<T>> getAPI<T>(String url, T Function(Object? json) fromJson) async {
    try {
      
      print(Config().baseUrl + url);
      final response = await Dio().get(Config().baseUrl + url);
      print("RESPONSE: " + response.toString());
      final data = ResponseAPI.fromJson(response.data, fromJson);
      return data;
    } catch (e) {
      print('Error fetching data: $e');
      throw e;
    }
  }

  Future<ResponseAPI<T>> postAPI<T>(
      String url, Map<String, dynamic> params) async {
    final response = await Dio().post(Config().baseUrl + url, data: params);
    final data = ResponseAPI<T>.fromJson(response.data, (json) => json as T);
    return data;
  }

  Future<ResponseAPI<T>> patchAPI<T>(
      String url, Map<String, dynamic> params) async {
    final response = await Dio().patch(Config().baseUrl + url, data: params);
    final data = ResponseAPI<T>.fromJson(response.data, (json) => json as T);
    return data;
  }

  Future<ResponseAPI<T>> deleteAPI<T>(String url) async {
    final response = await Dio().delete(Config().baseUrl + url);
    final data = ResponseAPI<T>.fromJson(response.data, (json) => json as T);
    return data;
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
