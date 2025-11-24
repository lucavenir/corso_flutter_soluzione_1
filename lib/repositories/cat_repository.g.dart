// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(catRepository)
const catRepositoryProvider = CatRepositoryFamily._();

final class CatRepositoryProvider
    extends $FunctionalProvider<CatRepository, CatRepository, CatRepository>
    with $Provider<CatRepository> {
  const CatRepositoryProvider._({
    required CatRepositoryFamily super.from,
    required CatApi super.argument,
  }) : super(
         retry: null,
         name: r'catRepositoryProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$catRepositoryHash();

  @override
  String toString() {
    return r'catRepositoryProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<CatRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  CatRepository create(Ref ref) {
    final argument = this.argument as CatApi;
    return catRepository(ref, api: argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CatRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CatRepository>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is CatRepositoryProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$catRepositoryHash() => r'21f5239a51125152a9ac1b18cde8c37dee86f483';

final class CatRepositoryFamily extends $Family
    with $FunctionalFamilyOverride<CatRepository, CatApi> {
  const CatRepositoryFamily._()
    : super(
        retry: null,
        name: r'catRepositoryProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  CatRepositoryProvider call({required CatApi api}) =>
      CatRepositoryProvider._(argument: api, from: this);

  @override
  String toString() => r'catRepositoryProvider';
}
