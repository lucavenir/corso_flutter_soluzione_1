// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cats.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(cats)
const catsProvider = CatsProvider._();

final class CatsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<CatModel>>,
          List<CatModel>,
          FutureOr<List<CatModel>>
        >
    with $FutureModifier<List<CatModel>>, $FutureProvider<List<CatModel>> {
  const CatsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'catsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$catsHash();

  @$internal
  @override
  $FutureProviderElement<List<CatModel>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<CatModel>> create(Ref ref) {
    return cats(ref);
  }
}

String _$catsHash() => r'6740a72f48c5cafca0f14460b673164b4df8fe3c';
