import '../../core/requests/sample_request.dart';
import '../../core/resources/data_state.dart';
import '../../core/usecase/usecase.dart';
import '/src/data/models/sample_model.dart';
import '../repositories/sample_repository.dart';

class SampleUseCase implements UseCase<DataState<SampleModel>, SampleRequest> {
  final SampleRepository _sampleRepository;

  SampleUseCase(this._sampleRepository);

  @override
  Future<DataState<SampleModel>> call({required SampleRequest params}) {
    return _sampleRepository.getSampleModels(params);
  }
}
