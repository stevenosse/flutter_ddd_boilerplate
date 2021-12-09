abstract class IHttpClient {
  Future<T?> get<T>({required String path, Map<String, dynamic>? params});
  Future<T?> head<T>({required String path, Map<String, dynamic>? params});
  Future<T?> post<T>({required String path, Map<String, dynamic>? data});
  Future<T?> put<T>({required String path, Map<String, dynamic>? data});
  Future<T?> patch<T>({required String path, Map<String, dynamic>? data});
  Future<T?> delete<T>({required String path, Map<String, dynamic>? data});
}
