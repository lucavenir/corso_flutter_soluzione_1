import "package:color_changer/api/http_client.dart";
import "package:color_changer/api/rick_morty_api.dart";
import "package:color_changer/models/character_model.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

part "character.g.dart";

@riverpod
Future<List<CharacterModel>> getCharacters(Ref ref, int page) async {
  final client = ref.watch(httpClientProvider("https://rickandmortyapi.com/api/"));
  final api = ref.watch(rickAndMortyApiProvider(client));

  final result = await api.getCharacters(page);

  return result.results;
}

@riverpod
FutureOr<CharacterModel> getCharacter(Ref ref, int id) {
  final client = ref.watch(httpClientProvider("https://rickandmortyapi.com/api/"));
  final api = ref.watch(rickAndMortyApiProvider(client));

  return api.getCharacter(id);
}
