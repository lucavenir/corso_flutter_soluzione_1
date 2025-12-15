import "package:color_changer/api/models/character_api_model.dart";
import "package:color_changer/models/character_review_model.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

part "review.g.dart";

@riverpod
class Review extends _$Review {
  @override
  List<CharacterReviewModel> build() {
    return [];
  }

  void submitReview(
    Character character, {
    required Map<String, Object?> formValue,
  }) {
    final index = state.map((e) => e.character.id).toList().indexOf(character.id);

    final edit = CharacterReviewModel(
      character: character,
      rating: formValue["rating"]! as int,
      comment: formValue["comment"]! as String,
    );

    if (index == -1) {
      state.add(edit);
      ref.notifyListeners();
    } else {
      state[index] = edit;
      ref.notifyListeners();
    }
  }

  void removeReviews(CharacterReviewModel review) {
    state.remove(review);
    ref.notifyListeners();
  }

  void clearReviews() {
    state.clear();
    ref.notifyListeners();
  }
}
