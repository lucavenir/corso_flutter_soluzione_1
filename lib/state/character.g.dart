// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getCharacters)
const getCharactersProvider = GetCharactersFamily._();

final class GetCharactersProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<CharacterModel>>,
          List<CharacterModel>,
          FutureOr<List<CharacterModel>>
        >
    with
        $FutureModifier<List<CharacterModel>>,
        $FutureProvider<List<CharacterModel>> {
  const GetCharactersProvider._({
    required GetCharactersFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'getCharactersProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$getCharactersHash();

  @override
  String toString() {
    return r'getCharactersProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<CharacterModel>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<CharacterModel>> create(Ref ref) {
    final argument = this.argument as int;
    return getCharacters(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is GetCharactersProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$getCharactersHash() => r'b778d96218e7a1cf36d5a885af973a0f60f54dec';

final class GetCharactersFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<CharacterModel>>, int> {
  const GetCharactersFamily._()
    : super(
        retry: null,
        name: r'getCharactersProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  GetCharactersProvider call(int page) =>
      GetCharactersProvider._(argument: page, from: this);

  @override
  String toString() => r'getCharactersProvider';
}

@ProviderFor(getCharacter)
const getCharacterProvider = GetCharacterFamily._();

final class GetCharacterProvider
    extends
        $FunctionalProvider<
          AsyncValue<CharacterModel>,
          CharacterModel,
          FutureOr<CharacterModel>
        >
    with $FutureModifier<CharacterModel>, $FutureProvider<CharacterModel> {
  const GetCharacterProvider._({
    required GetCharacterFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'getCharacterProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$getCharacterHash();

  @override
  String toString() {
    return r'getCharacterProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<CharacterModel> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<CharacterModel> create(Ref ref) {
    final argument = this.argument as int;
    return getCharacter(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is GetCharacterProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$getCharacterHash() => r'ca026863a7b513577d6f59e9b48743d101619c1a';

final class GetCharacterFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<CharacterModel>, int> {
  const GetCharacterFamily._()
    : super(
        retry: null,
        name: r'getCharacterProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  GetCharacterProvider call(int id) =>
      GetCharacterProvider._(argument: id, from: this);

  @override
  String toString() => r'getCharacterProvider';
}
