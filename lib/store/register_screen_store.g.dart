// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_screen_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RegisterScreenStore on _RegisterScreenStoreBase, Store {
  Computed<bool>? _$nomeValidComputed;

  @override
  bool get nomeValid =>
      (_$nomeValidComputed ??= Computed<bool>(() => super.nomeValid,
              name: '_RegisterScreenStoreBase.nomeValid'))
          .value;
  Computed<String?>? _$nomeErrorComputed;

  @override
  String? get nomeError =>
      (_$nomeErrorComputed ??= Computed<String?>(() => super.nomeError,
              name: '_RegisterScreenStoreBase.nomeError'))
          .value;

  late final _$nomeAtom =
      Atom(name: '_RegisterScreenStoreBase.nome', context: context);

  @override
  String get nome {
    _$nomeAtom.reportRead();
    return super.nome;
  }

  @override
  set nome(String value) {
    _$nomeAtom.reportWrite(value, super.nome, () {
      super.nome = value;
    });
  }

  late final _$_RegisterScreenStoreBaseActionController =
      ActionController(name: '_RegisterScreenStoreBase', context: context);

  @override
  void setNome(dynamic _) {
    final _$actionInfo = _$_RegisterScreenStoreBaseActionController.startAction(
        name: '_RegisterScreenStoreBase.setNome');
    try {
      return super.setNome(_);
    } finally {
      _$_RegisterScreenStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
nome: ${nome},
nomeValid: ${nomeValid},
nomeError: ${nomeError}
    ''';
  }
}
