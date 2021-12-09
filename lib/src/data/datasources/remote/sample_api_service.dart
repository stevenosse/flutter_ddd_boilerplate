abstract class SampleApiService {
  Future<dynamic> getSampleData() async {
    return Future.delayed(const Duration(seconds: 2));
  }
}
