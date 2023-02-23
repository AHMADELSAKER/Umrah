import 'package:dio/dio.dart';
import 'package:umrah_app/shared/network/remote/end_point.dart';
import 'package:flutter/cupertino.dart';

class DioHelper {
  static Dio? dio;
  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://student.valuxapps.com/api/',
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> getdata({
    @required String? url,
    Map<String, dynamic>? query,
    String lang = 'en',
    String? token,
  }) async {
    dio?.options.headers = {
      'lang': lang,
      'Authorization': token,
      'Content-Type': 'application/json'
    };
    return await dio!.get(url!, queryParameters: query);
  }

  // static Future<Response> postdata(Map<String, dynamic> data) {
  //   return dio!.post(
  //     LOGIN,
  //     data: data,
  //     options: Options(
  //       headers: {
  //         'lang': 'ar',
  //         'Content-Type': 'application/json',
  //       },
  //     ),
  //   );
  // }

  static Future<Response> postdata({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
    String lang = 'ar',
    String? token,
  }) async {
    options:
    Options(
      headers: {
        'lang': 'ar',
        'Content-Type': 'application/json',
      },
    );
    return await dio!.post(url, data: data);
  }

  static Future<Response> putdata({
    String? url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
    String lang = 'ar',
    String? token,
  }) async {
    options:
    Options(
      headers: {
        'lang': 'ar',
        'Content-Type': 'application/json',
      },
    );
    return await dio!.put(url!, data: data);
  }
}
