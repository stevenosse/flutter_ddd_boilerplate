import 'package:flutter_boilerplate/src/data/datasources/remote/sample_api_service.dart';
import 'package:flutter_boilerplate/src/data/repositories/sample_repository_impl.dart';
import 'package:flutter_boilerplate/src/domain/repositories/sample_repository.dart';
import 'package:flutter_boilerplate/src/domain/usecases/sample_use_case.dart';
import 'package:get_it/get_it.dart';

import '/src/data/datasources/remote/dio_http_client.dart';
import '/src/data/datasources/local/local_storage.dart';

final GetIt injector = GetIt.instance;

Future<void> initializeDependencies() async {
  /// Register service locators
  ///
  /// Misc
  injector.registerSingleton<LocalStorage>(LocalStorage());
  injector.registerSingleton<DioHttpClient>(DioHttpClient());

  /// Register services
  injector.registerSingleton<SampleApiService>(SampleApiService(injector()));

  /// Register repositories
  injector.registerSingleton<SampleRepository>(SampleRepositoryImpl(injector()));

  /// Register use cases
  injector.registerSingleton<SampleUseCase>(SampleUseCase(injector()));
}
