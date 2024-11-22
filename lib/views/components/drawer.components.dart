import 'package:flutter/material.dart';

class DrawerComponents extends StatelessWidget {
  const DrawerComponents({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              arrowColor: Colors.blue,
              accountName: Text('raurau'),
              accountEmail: Text('exemplo12@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/perfil.jpg'),
              ),
            ),
            ListTile(
              title: Text('Painel'),
              onTap: () => {},
            ),
            ListTile(
              title: Text('Pacientes'),
              onTap: () => {Navigator.pushNamed(context, '/pacientes')},
            ),
            ListTile(
              title: Text('Médiocos'),
              onTap: () => {Navigator.pushNamed(context, '/medicos')},
            ),
            ListTile(
              title: Text('Consultas'),
              onTap: () => {Navigator.pushNamed(context, '/consultas')},
            ),
            ListTile(
              title: Text('Sair'),
              leading: Icon(Icons.exit_to_app),
              iconColor: Colors.red,
              onTap: () => {Navigator.pushReplacementNamed(context, '/')},
            ),
          ],
        ),
      ),
    );
  }
}