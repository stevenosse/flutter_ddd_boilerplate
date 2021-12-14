import '/src/data/datasources/remote/dio_http_client.dart';
import '/src/data/datasources/remote/http_data_source.dart';
import '/src/data/models/sample_model.dart';

abstract class SampleApiService extends HttpDataSource<DioHttpClient> {
  SampleApiService(DioHttpClient client) : super(client);

  Future<SampleModel> getSampleData() async {
    return Future.value(const SampleModel(id: "1", name: "Sample data"));
  }
}
