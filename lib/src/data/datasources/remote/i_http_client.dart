import '/src/core/resources/types.dart';

abstract class IHttpClient {
  String get baseUrl;

  Future<T?> get<T>({required String path, Json? params});
  Future<T?> head<T>({required String path, Json? params});
  Future<T?> post<T>({required String path, Json? data});
  Future<T?> put<T>({required String path, Json? data});
  Future<T?> patch<T>({required String path, Json? data});
  Future<T?> delete<T>({required String path, Json? data});
}
