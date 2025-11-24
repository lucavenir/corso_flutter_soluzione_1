import "package:color_changer/api/models/cat_api_model.dart";
import "package:color_changer/api/models/http_cat_api_model.dart";
import "package:dio/dio.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

part "cat_api.g.dart";

@riverpod
CatApi catApi(Ref ref, Dio client) {
  return CatApi(client);
}

class CatApi {
  const CatApi(this.client);
  final Dio client;

  Future<List<CatApiModel>> list() async {
    final result = await client.get<List<Object?>>(
      "https://api.thecatapi.com/v1/images/search?limit=10",
    );
    final value = result.data!;
    return value
        .map((e) => e!)
        .map((e) => e as Map<String, Object?>)
        .map(CatApiModel.fromJson)
        .toList();
  }

  Future<HttpCatApiModel> get(int status) async {
    final result = await client.get<Map<String, Object?>>("/status/$status");
    final value = result.data!;
    return HttpCatApiModel.fromJson(value);
  }
}
