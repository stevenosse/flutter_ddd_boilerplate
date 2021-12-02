import 'package:flutter_boilerplate/src/core/params/sample_request.dart';

import '../../core/resources/data_state.dart';
import '../../core/usecase/usecase.dart';
import '../entities/sample_entity.dart';
import '../repositories/sample_repository.dart';

class GetSampleUseCase implements UseCase<DataState<List<SampleModel>>, SampleRequest> {
  final SampleRepository _sampleRepository;

  GetSampleUseCase(this._sampleRepository);

  @override
  Future<DataState<List<SampleModel>>> call({required SampleRequest params}) {
    return _sampleRepository.getSampleModels(params);
  }
}