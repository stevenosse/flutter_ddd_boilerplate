import 'package:flutter_boilerplate/src/data/datasources/remote/i_http_client.dart';

abstract class NetworkDataSource<T extends IHttpClient> {
  final T client;
  NetworkDataSource(this.client);
}
