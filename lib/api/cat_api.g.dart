// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(catApi)
const catApiProvider = CatApiFamily._();

final class CatApiProvider extends $FunctionalProvider<CatApi, CatApi, CatApi>
    with $Provider<CatApi> {
  const CatApiProvider._({
    required CatApiFamily super.from,
    required Dio super.argument,
  }) : super(
         retry: null,
         name: r'catApiProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$catApiHash();

  @override
  String toString() {
    return r'catApiProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<CatApi> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  CatApi create(Ref ref) {
    final argument = this.argument as Dio;
    return catApi(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CatApi value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CatApi>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is CatApiProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$catApiHash() => r'e71d615ac8403e901e61c1483851cece581e4dbb';

final class CatApiFamily extends $Family
    with $FunctionalFamilyOverride<CatApi, Dio> {
  const CatApiFamily._()
    : super(
        retry: null,
        name: r'catApiProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  CatApiProvider call(Dio client) =>
      CatApiProvider._(argument: client, from: this);

  @override
  String toString() => r'catApiProvider';
}
