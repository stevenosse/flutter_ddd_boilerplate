import '/src/core/requests/sample_request.dart';
import '/src/domain/entities/sample_entity.dart';

import '/src/core/resources/data_state.dart';

abstract class SampleRepository {
  Future<DataState<List<SampleModel>>> getSampleModels(SampleRequest params);
}
