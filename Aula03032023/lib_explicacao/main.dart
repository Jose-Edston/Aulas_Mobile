import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner:
          false, //Ele retira a faixa vermelha escrita DEBUG
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Nubank',
        ),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      // O Column e o Row aceitam quantos filhos a gente quiser criar, porém o Body só aceita um filho e o Container também aceita só um filho, porém o Column é um embaixo do outro e o Row é lado a lado
      body: Column(
        mainAxisAlignment:
            MainAxisAlignment.spaceEvenly, //Ele funciona como um display flex
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.blue,
                width: 200,
                height: 200,
                child: Center(
                  child: Text('Hello Word'),
                ), //O Container espera um filho e esse filho espera um único parâmetro
              ),
              Container(
                color: Colors.blue,
                width: 200,
                height: 200,
                child: Center(
                  child: Text('Hello Word'),
                ), //O Container espera um filho e esse filho espera um único parâmetro
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.blue,
                width: 200,
                height: 200,
                child: Center(
                  child: Text('Hello Word'),
                ), //O Container espera um filho e esse filho espera um único parâmetro
              ),
              Container(
                color: Colors.blue,
                width: 200,
                height: 200,
                child: Center(
                  child: Text('Hello Word'),
                ), //O Container espera um filho e esse filho espera um único parâmetro
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search')
        ],
      ),
    );
  }
}
