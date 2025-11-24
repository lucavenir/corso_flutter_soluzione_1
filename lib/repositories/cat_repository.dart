import "package:color_changer/api/cat_api.dart";
import "package:color_changer/models/cat_model.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

part "cat_repository.g.dart";

@riverpod
CatRepository catRepository(Ref ref, {required CatApi api}) {
  return CatRepository(api: api);
}

class CatRepository {
  const CatRepository({
    required this.api,
  });
  final CatApi api;

  Future<List<CatModel>> fetchCats() async {
    final httpCat = await api.list();

    return httpCat
        .map(
          (e) => CatModel(
            id: e.id,
            imageUrl: e.url,
            width: e.width,
            height: e.height,
          ),
        )
        .toList();
  }
}
