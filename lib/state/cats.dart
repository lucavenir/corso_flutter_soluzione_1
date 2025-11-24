import "package:color_changer/api/cat_api.dart";
import "package:color_changer/api/http_client.dart";
import "package:color_changer/models/cat_model.dart";
import "package:color_changer/repositories/cat_repository.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

part "cats.g.dart";

@riverpod
Future<List<CatModel>> cats(Ref ref) {
  final client = ref.watch(httpClientProvider);
  final api = ref.watch(catApiProvider(client));
  final repository = ref.watch(catRepositoryProvider(api: api));

  return repository.fetchCats();
}
