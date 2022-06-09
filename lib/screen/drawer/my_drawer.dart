import 'package:aula_04/screen/register_screen.dart';
import 'package:aula_04/store/my_drawer_store.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class MyDrawer extends StatelessWidget {
  MyDrawer({Key? key}) : super(key: key);

  MyDrawerStore store = GetIt.I<MyDrawerStore>();

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(50), topRight: Radius.circular(55)),
      child: Container(
        width: MediaQuery.of(context).size.width * .4,
        child: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Column(children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        'https://cdn.pixabay.com/photo/2017/01/30/23/52/female-2022387_960_720.png'),
                  )
                ]),
              ),
              Observer(builder: (context) {
                return ListTile(
                  leading: Icon(
                    Icons.add_task_outlined,
                    color: (store.selected == 1 ? Colors.blue : Colors.black),
                  ),
                  title: Text(
                    'Fazer cadastro',
                    style: TextStyle(
                      color: (store.selected == 1 ? Colors.blue : Colors.black),
                    ),
                  ),
                  onTap: () {
                    store.setSelected(1);
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (c) => RegisterScreen()));
                  },
                );
              }),
              ListTile(
                leading: Icon(Icons.text_fields),
                title: Text('Tela 2 - teste'),
              ),
              ListTile(
                leading: Icon(Icons.textsms),
                title: Text('Tela 3 - teste'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
