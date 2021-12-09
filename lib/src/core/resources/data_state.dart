import '/src/core/exceptions/request_exception.dart';

abstract class DataState<T> {
  final T? data;
  final RequestException? error;

  const DataState({this.data, this.error});
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T data) : super(data: data);
}

class DataFailed<T> extends DataState<T> {
  const DataFailed(RequestException error) : super(error: error);
}
