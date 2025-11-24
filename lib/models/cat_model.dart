import "package:freezed_annotation/freezed_annotation.dart";

part "cat_model.freezed.dart";
part "cat_model.g.dart";

@freezed
@JsonSerializable()
class CatModel with _$CatModel {
  const CatModel({
    required this.id,
    required this.imageUrl,
    required this.width,
    required this.height,
  });

  factory CatModel.fromJson(Map<String, Object?> json) {
    return _$CatModelFromJson(json);
  }

  @override
  final String id;
  @override
  final String imageUrl;
  @override
  final int width;
  @override
  final int height;

  Map<String, Object?> toJson() {
    return _$CatModelToJson(this);
  }
}
