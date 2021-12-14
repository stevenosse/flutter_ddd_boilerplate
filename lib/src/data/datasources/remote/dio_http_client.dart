import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '/src/config/env_config.dart';
import 'i_http_client.dart';
import '/src/core/resources/types.dart';
import '/src/core/exceptions/request_exception.dart';

class DioHttpClient extends IHttpClient {
  @override
  String get baseUrl => EnvConfig.endpoint;

  late Dio _dio;

  DioHttpClient() {
    _initialize();
    _addLogInterceptor();
  }

  void _initialize() {
    _dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        headers: {
          "Accept-Encoding": "gzip, deflate, br",
          "Accept": "application/json",
          "Content-Type": "application/json",
        },
      ),
    );
  }

  void _addLogInterceptor() {
    _dio.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      error: true,
      compact: true,
    ));
  }

  @override
  Future<T?> get<T>({required String path, Json? params}) async {
    try {
      return (await _dio.get<T>(path, queryParameters: params)).data;
    } on DioError catch (e) {
      throw RequestException(
        message: e.message,
        data: e.response?.data,
        statusCode: e.response?.statusCode,
      );
    }
  }

  @override
  Future<T?> head<T>({required String path, Json? params}) async {
    try {
      return (await _dio.head(path, data: params)).data;
    } on DioError catch (e) {
      throw RequestException(
        message: e.message,
        data: e.response?.data,
        statusCode: e.response?.statusCode,
      );
    }
  }

  @override
  Future<T?> patch<T>({required String path, Json? data}) async {
    try {
      return (await _dio.patch(path, data: data)).data;
    } on DioError catch (e) {
      throw RequestException(
        message: e.message,
        data: e.response?.data,
        statusCode: e.response?.statusCode,
      );
    }
  }

  @override
  Future<T?> post<T>({required String path, Json? data}) async {
    try {
      return (await _dio.post(path, data: data)).data;
    } on DioError catch (e) {
      throw RequestException(
        message: e.message,
        data: e.response?.data,
        statusCode: e.response?.statusCode,
      );
    }
  }

  @override
  Future<T?> put<T>({required String path, Json? data}) async {
    try {
      return (await _dio.put<T>(path, data: data)).data;
    } on DioError catch (e) {
      throw RequestException(
        message: e.message,
        data: e.response?.data,
        statusCode: e.response?.statusCode,
      );
    }
  }

  @override
  Future<T?> delete<T>({required String path, Json? data}) async {
    try {
      return (await _dio.delete<T>(path, data: data)).data;
    } on DioError catch (e) {
      throw RequestException(
        message: e.message,
        data: e.response?.data,
        statusCode: e.response?.statusCode,
      );
    }
  }
}
