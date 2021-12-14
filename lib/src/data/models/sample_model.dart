import '/src/data/models/i_model.dart';
import '/src/domain/entities/sample_entity.dart';

class SampleModel extends SampleEntity implements IModel {
  const SampleModel({
    required String id,
    required String name,
  }) : super(id: id, name: name);

  @override
  SampleModel fromJson(Map<String, dynamic> json) {
    return SampleModel(
      id: json["id"],
      name: json["name"],
    );
  }
}
