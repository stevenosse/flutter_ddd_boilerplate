class RequestException with Exception {
  final String message;
  final int? statusCode;
  final dynamic data;

  RequestException({required this.message, this.statusCode, this.data});
}
