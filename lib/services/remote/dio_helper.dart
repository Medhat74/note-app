import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio;
  static init() {
    dio = Dio(BaseOptions(
        baseUrl: "https://team5-github-180daraga.herokuapp.com/",
        receiveDataWhenStatusError: true));
  }

  static Future<Response> getData(
      {required String url, required Map<String, dynamic> query}) async {
    return await dio.get(url, queryParameters: query);
  }

  static Future<void> postData(
      {required String url, required Map<String, dynamic> query}) async {
    dio.post(url, queryParameters: query);
  }
}