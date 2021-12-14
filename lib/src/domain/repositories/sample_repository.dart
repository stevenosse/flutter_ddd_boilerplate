import '/src/core/requests/sample_request.dart';
import '/src/data/models/sample_model.dart';

import '/src/core/resources/data_state.dart';

abstract class SampleRepository {
  Future<DataState<SampleModel>> getSampleModels(SampleRequest params);
}
