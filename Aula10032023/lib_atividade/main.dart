import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agenda'),
      ),
      body: ListView(children: [
        ListTile(
          title: Text('Page2'),
          trailing: Icon(Icons.phone),
          leading: CircleAvatar(child: Text('J')),
          subtitle: Text('jose.azevedo@alunos.sc.senac.br'),
        ),
        ListTile(
          title: Text('Page2'),
          trailing: Icon(Icons.phone),
          leading: CircleAvatar(child: Text('J')),
          subtitle: Text('jose.azevedo@alunos.sc.senac.br'),
        ),
        ListTile(
          title: Text('Page2'),
          trailing: Icon(Icons.phone),
          leading: CircleAvatar(child: Text('J')),
          subtitle: Text('jose.azevedo@alunos.sc.senac.br'),
        ),
        ListTile(
          title: Text('Page2'),
          trailing: Icon(Icons.phone),
          leading: CircleAvatar(child: Text('J')),
          subtitle: Text('jose.azevedo@alunos.sc.senac.br'),
        ),
        ListTile(
          title: Text('Page2'),
          trailing: Icon(Icons.phone),
          leading: CircleAvatar(child: Text('J')),
          subtitle: Text('jose.azevedo@alunos.sc.senac.br'),
        ),
        ListTile(
          title: Text('Page2'),
          trailing: Icon(Icons.phone),
          leading: CircleAvatar(child: Text('J')),
          subtitle: Text('jose.azevedo@alunos.sc.senac.br'),
        ),
        ListTile(
          title: Text('Page2'),
          trailing: Icon(Icons.phone),
          leading: CircleAvatar(child: Text('J')),
          subtitle: Text('jose.azevedo@alunos.sc.senac.br'),
        ),
        ListTile(
          title: Text('Page2'),
          trailing: Icon(Icons.phone),
          leading: CircleAvatar(child: Text('J')),
          subtitle: Text('jose.azevedo@alunos.sc.senac.br'),
        ),
      ]),
    );
  }
}
