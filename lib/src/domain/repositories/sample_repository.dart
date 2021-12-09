import '../../core/requests/sample_request.dart';
import 'package:flutter_boilerplate/src/domain/entities/sample_entity.dart';

import '../../core/resources/data_state.dart';
import '../entities/sample_entity.dart';

abstract class SampleRepository {
  Future<DataState<List<SampleModel>>> getSampleModels(SampleRequest params);
}
