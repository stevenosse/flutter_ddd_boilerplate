import '/src/core/exceptions/request_exception.dart';
import '/src/data/datasources/remote/sample_api_service.dart';
import '/src/data/models/sample_model.dart';
import '/src/core/resources/data_state.dart';
import '/src/core/requests/sample_request.dart';
import '/src/domain/repositories/sample_repository.dart';

class SampleRepositoryImpl extends SampleRepository {
  final SampleApiService service;

  SampleRepositoryImpl(this.service);

  @override
  Future<DataState<SampleModel>> getSampleModels(SampleRequest params) async {
    try {
      final data = await service.getSampleData();
      return DataSuccess(data);
    } on RequestException catch (e) {
      return DataFailed(e);
    }
  }
}
