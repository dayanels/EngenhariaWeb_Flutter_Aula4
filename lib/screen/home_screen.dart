import 'package:flutter/material.dart';

import 'drawer/my_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          title: Text('Home'),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.only(top: 60),
          child: Column(children: [
            Center(
              child: ElevatedButton(
                child: Text("clique aqui"),
                onPressed: () {},
              ),
            ),
          ]),
        ));
  }
}
