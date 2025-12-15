import "package:color_changer/models/character_model.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part "character_review_model.freezed.dart";

@freezed
abstract class CharacterReviewModel with _$CharacterReviewModel {
  factory CharacterReviewModel({
    required CharacterModel character,
    required int rating,
    required String comment,
  }) = _CharacterReviewModel;
}
