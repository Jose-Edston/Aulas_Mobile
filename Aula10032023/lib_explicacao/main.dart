import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.green),
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pagecontroller = PageController();

  int active = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text('José'),
                accountEmail: Text('jose.azevedo@alunos.sc.senac.br'),
                currentAccountPicture: CircleAvatar(
                  child: Text('J'),
                ),
              ),
              ListTile(
                onTap: () {
                  _pagecontroller.jumpToPage(0);
                  setState(() {
                    active = 0;
                  });
                  Navigator.pop(context);
                },
                title: Text('Page0'),
                trailing: Icon(Icons.home),
                leading: CircleAvatar(),
                subtitle: Text('jose.azevedo@alunos.sc.senac.br'),
              ),
              ListTile(
                onTap: () {
                  _pagecontroller.jumpToPage(1);
                  setState(() {
                    active = 1;
                  });
                  Navigator.pop(context);
                },
                title: Text('Home'),
                trailing: Icon(Icons.home),
                leading: CircleAvatar(),
                subtitle: Text('jose.azevedo@alunos.sc.senac.br'),
              ),
              ListTile(
                onTap: () {
                  _pagecontroller.jumpToPage(2);
                  setState(() {
                    active = 2;
                  });
                  Navigator.pop(context);
                },
                title: Text('Page2'),
                trailing: Icon(Icons.home),
                leading: CircleAvatar(),
                subtitle: Text('jose.azevedo@alunos.sc.senac.br'),
              ),
              ListTile(
                onTap: () {
                  _pagecontroller.jumpToPage(3);
                  setState(() {
                    active = 3;
                  });
                  Navigator.pop(context);
                },
                title: Text('Page3'),
                trailing: Icon(Icons.home),
                leading: CircleAvatar(),
                subtitle: Text('jose.azevedo@alunos.sc.senac.br'),
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('EKart'),
        ),
        body: PageView(
          controller: _pagecontroller,
          children: [
            Container(
              child: Icon(Icons.home),
            ),
            Container(
              color: Colors.blueGrey,
            ),
            Container(
              color: Colors.greenAccent,
            ),
            Container(
              color: Colors.deepOrange,
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: active,
            onTap: (value) {
              _pagecontroller.animateToPage(value,
                  duration: Duration(milliseconds: 800), curve: Curves.ease);

              setState(() {
                active = value;
              });

              print(active);
            },
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            ]));
  }
}
