import 'package:dartz/dartz.dart';

import '/src/core/requests/sample_request.dart';
import '/src/data/models/sample_model.dart';
import '/src/core/exceptions/request_exception.dart';

abstract class SampleRepository {
  Future<Either<SampleModel, RequestException>> getSampleModels(SampleRequest params);
}
