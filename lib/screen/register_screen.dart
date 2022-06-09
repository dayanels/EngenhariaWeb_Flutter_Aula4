import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:aula_04/store/register_screen_store.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  RegisterScreenStore store = GetIt.I<RegisterScreenStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registrar'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 80, left: 40, right: 40),
        child: Card(
          child: Column(
            children: [
              Observer(builder: (_) {
                return TextField(
                  onChanged: store.setNome,
                  controller: store.nomeController,
                  decoration: InputDecoration(
                    labelText: "Nome",
                    hintText: "Fulano...",
                    errorText: store.nomeError,
                    border: OutlineInputBorder(),
                  ),
                );
              }),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: TextField(
                  onChanged: store.setNome,
                  controller: store.nomeController,
                  decoration: InputDecoration(
                    labelText: "Sobrenome",
                    hintText: "de tal...",
                    errorText: store.nomeError,
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: TextField(
                  onChanged: store.setNome,
                  controller: store.nomeController,
                  decoration: InputDecoration(
                    labelText: "CPF",
                    hintText: "XXX-XXX-XXX-XX",
                    errorText: store.nomeError,
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: TextField(
                  onChanged: store.setNome,
                  controller: store.nomeController,
                  decoration: InputDecoration(
                    labelText: "Idade",
                    hintText: "18 anos",
                    errorText: store.nomeError,
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
