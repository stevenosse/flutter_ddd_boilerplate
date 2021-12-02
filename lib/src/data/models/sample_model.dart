class SampleModel {
  SampleModel({
    required this.id,
    required this.name,
  });

  String id;
  String name;

  factory SampleModel.fromJson(Map<String, dynamic> json) {
    return SampleModel(
      id: json["id"],
      name: json["name"],
    );
  }
}
