import '/src/data/datasources/remote/i_http_client.dart';

abstract class HttpDataSource<T extends IHttpClient> {
  final T client;
  HttpDataSource(this.client);
}
