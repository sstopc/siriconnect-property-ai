import 'package:dio/dio.dart';

import '../../config/env.dart';

class ApiClient {
  ApiClient()
      : _dio = Dio(
          BaseOptions(
            baseUrl: Env.apiBaseUrl,
            connectTimeout: Env.connectTimeout,
            receiveTimeout: Env.receiveTimeout,
            responseType: ResponseType.json,
          ),
        );

  final Dio _dio;

  Dio get client => _dio;
}