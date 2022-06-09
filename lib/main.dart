import 'package:aula_04/screen/home_screen.dart';
import 'package:aula_04/store/my_drawer_store.dart';
import 'package:aula_04/store/register_screen_store.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

void main() {
  inicializarSingleton();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ));
}

void inicializarSingleton() {
  GetIt.I.registerSingleton(MyDrawerStore());
  GetIt.I.registerSingleton(RegisterScreenStore());
}
