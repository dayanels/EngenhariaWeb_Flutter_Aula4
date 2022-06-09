import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'register_screen_store.g.dart';

class RegisterScreenStore = _RegisterScreenStoreBase with _$RegisterScreenStore;

abstract class _RegisterScreenStoreBase with Store {
  TextEditingController nomeController = TextEditingController();

  @observable
  String nome = "";
  String sobrenome = "";
  int idade = 16;
  String cpf = "";

  @action
  void setNome(_) {
    nome = nomeController.text;
  }

  @computed
  bool get nomeValid => nome.length > 2;

  @computed
  String? get nomeError {
    if (nomeValid || nome.isEmpty) {
      return null;
    } else {
      return "O campo deve conter pelo menos 3 caracteres (Ex: Ana )";
    }
  }
}
