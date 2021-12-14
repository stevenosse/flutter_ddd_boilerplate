import 'i_request.dart';
import '/src/core/resources/types.dart';

class SampleRequest implements IRequest {
  final String query;
  const SampleRequest({required this.query});

  @override
  Json toJson() {
    return {
      "query": query,
    };
  }
}
