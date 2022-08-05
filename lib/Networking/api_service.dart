import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart' as dio;
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';


import 'api_config.dart';

enum RequestMethod {
  POST,
  GET,
  PUT,
  PATCH,
  DELETE,
}

class ApiService {
  static late dio.CancelToken cancelToken;

  static get box => null;

  static Future<Map<String, dynamic>?> request(String path, {required RequestMethod method, data, queryParameters, Function(int, int)? onSendProgress}) async {
    log('method: ${describeEnum(method)}');
    log('queryParameters: $queryParameters');
    log('data: $data');
    try {
      ApiConfig().dio.options.headers[HttpHeaders.authorizationHeader] = box.get('authToken');
      ApiConfig().dio.options.headers['X-localization'] = Get.locale!.languageCode.toString();
      ApiConfig().dio.options.method = describeEnum(method);
      cancelToken = dio.CancelToken();

      dio.Response response = await ApiConfig().dio.request(
        path,
        data: data == null ? null : dio.FormData.fromMap(data),
        queryParameters: queryParameters,
        onSendProgress: (int sent, int total) {
          print( '$sent $total');
        
          // onSendProgress!(sent, total);
        },
        cancelToken: cancelToken,
      );

      log(response.data.toString());
      if (response.statusCode == 200) {
        log(response.data.toString());
        return response.data;
      }
    } on dio.DioError catch (e) {
      log("$path >>>>> ${e.response}");
      if (e.response?.statusCode != 500) {
        return e.response?.data;
      }
    } on SocketException catch (_) {

    }

    return null;
  }
}
