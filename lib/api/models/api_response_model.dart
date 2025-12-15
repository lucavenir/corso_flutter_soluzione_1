import "package:color_changer/api/models/character_api_model.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part "api_response_model.freezed.dart";
part "api_response_model.g.dart";

@freezed
abstract class RickAndMortyResponse with _$RickAndMortyResponse {
  const factory RickAndMortyResponse({
    Info? info,
    @Default([]) List<CharacterApiModel> results,
  }) = _RickAndMortyResponse;

  factory RickAndMortyResponse.fromJson(Map<String, Object?> json) =>
      _$RickAndMortyResponseFromJson(json);
}

@freezed
abstract class Info with _$Info {
  const factory Info({int? count, int? pages, String? next, String? prev}) = _Info;

  factory Info.fromJson(Map<String, Object?> json) => _$InfoFromJson(json);
}
