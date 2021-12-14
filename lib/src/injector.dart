import 'package:get_it/get_it.dart';

import '/src/data/datasources/remote/dio_http_client.dart';
import '/src/data/datasources/local/local_storage.dart';

final injector = GetIt.instance;

Future<void> initializeDependencies() async {
  /// Register service locators
  /// 
  /// Misc
  injector.registerSingleton<LocalStorage>(LocalStorage());
  injector.registerSingleton<DioHttpClient>(DioHttpClient());

  /// Register services
  /// Register repositories
  /// Register use cases
}
