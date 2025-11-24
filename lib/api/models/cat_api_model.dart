import "package:freezed_annotation/freezed_annotation.dart";

part "cat_api_model.freezed.dart";
part "cat_api_model.g.dart";

@freezed
@JsonSerializable()
class CatApiModel with _$CatApiModel {
  const CatApiModel({
    required this.id,
    required this.url,
    required this.width,
    required this.height,
  });

  factory CatApiModel.fromJson(Map<String, Object?> json) {
    return _$CatApiModelFromJson(json);
  }

  @override
  final String id;
  @override
  final String url;
  @override
  final int width;
  @override
  final int height;

  Map<String, Object?> toJson() {
    return _$CatApiModelToJson(this);
  }
}
