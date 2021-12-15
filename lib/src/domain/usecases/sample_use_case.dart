import 'package:dartz/dartz.dart';
import '/src/core/exceptions/request_exception.dart';

import '/src/core/requests/sample_request.dart';
import '/src/core/usecase/usecase.dart';
import '/src/data/models/sample_model.dart';
import '../repositories/sample_repository.dart';

class SampleUseCase implements UseCase<Either<SampleModel, RequestException>, SampleRequest> {
  final SampleRepository _sampleRepository;

  SampleUseCase(this._sampleRepository);

  @override
  Future<Either<SampleModel, RequestException>> call({required SampleRequest params}) {
    return _sampleRepository.getSampleModels(params);
  }
}
