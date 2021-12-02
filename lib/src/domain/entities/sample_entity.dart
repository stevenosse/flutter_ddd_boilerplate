import 'package:equatable/equatable.dart';

class SampleModel extends Equatable {
  final String id;
  final String name;

  const SampleModel({
    required this.id,
    required this.name,
  });

  @override
  List<Object> get props => [id, name];

  @override
  bool get stringify => true;
}
