import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ekart'),
        backgroundColor: Color.fromARGB(255, 49, 131, 197),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.green,
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: Center(child: Text('Pesquisa')),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.red,
                width: MediaQuery.of(context).size.width,
                height: 300,
                child: Center(child: Text('Imagem')),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    color: Colors.yellow,
                    width: 200,
                    height: 200,
                    child: Center(child: Text('Icones Seleção')),
                  ),
                  Container(
                    color: Colors.yellow,
                    width: 200,
                    height: 200,
                    child: Center(child: Text('Icones Seleção')),
                  ),
                  Container(
                    color: Colors.yellow,
                    width: 200,
                    height: 200,
                    child: Center(child: Text('Icones Seleção')),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    color: Colors.yellow,
                    width: 200,
                    height: 200,
                    child: Center(child: Text('Icones Seleção')),
                  ),
                  Container(
                    color: Colors.yellow,
                    width: 200,
                    height: 200,
                    child: Center(child: Text('Icones Seleção')),
                  ),
                  Container(
                    color: Colors.yellow,
                    width: 200,
                    height: 200,
                    child: Center(child: Text('Icones Seleção')),
                  ),
                ],
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: 'Category'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favorite'),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), label: 'Cart'),
        ],
      ),
    );
  }
}
