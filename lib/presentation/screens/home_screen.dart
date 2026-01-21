import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  static final name = 'home_screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            title: Text('Cubits'),
            subtitle: Text('Gestor de estado simple'),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
            onTap: () => {context.push('/cubits')},
          ),
          ListTile(
            title: Text('Bloc'),
            subtitle: Text('Gestor de estado Compuesto'),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
            onTap: () => {context.push('/bloc')},
          ),

          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
            child: Divider(),
          ),
          ListTile(
            title: Text('Nuevo usuario'),
            subtitle: Text('Manejo de formularios'),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
            onTap: () => {context.push('/new-user')},
          ),
        ],
      ),
    );
  }
}
