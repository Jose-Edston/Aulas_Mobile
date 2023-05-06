import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
    ),
  );
}

enum Jogada { pedra, papel, tesoura }

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Jogada escolhaUsuario;
  Jogada escolhaApp;
  String resultado = '';

  void jogar(Jogada escolhaUsuario) {
    setState(() {
      this.escolhaUsuario = escolhaUsuario;
      this.escolhaApp = _gerarEscolhaApp();
      resultado = _calcularResultado();
    });
  }

  Jogada _gerarEscolhaApp() {
    final rand = Random();
    final listaJogadas = Jogada.values;
    return listaJogadas[rand.nextInt(listaJogadas.length)];
  }

  String _calcularResultado() {
    if (escolhaUsuario == escolhaApp) {
      return 'Empate!';
    } else if ((escolhaUsuario == Jogada.pedra &&
            escolhaApp == Jogada.tesoura) ||
        (escolhaUsuario == Jogada.papel && escolhaApp == Jogada.pedra) ||
        (escolhaUsuario == Jogada.tesoura && escolhaApp == Jogada.papel)) {
      return 'Você ganhou!';
    } else {
      return 'Você perdeu!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sorteio'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Sua Jogada!'),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      print('Cliquei no botão pedra');
                    },
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/pedra.png'),
                      radius: 80,
                    ),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/papel.png'),
                    radius: 80,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/tesoura.png'),
                    radius: 80,
                  ),
                ],
              ),
            ),
            Text('Jogada do Computador!'),
            Container(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/papel.png'),
                      radius: 80,
                    ),
                  ]),
            ),
            Text('Resultado'),
            Text('Você Ganhou'),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              color: Colors.grey,
              width: 200,
              height: 80,
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text('Você'),
                      Text('5'),
                    ],
                  ),
                  Column(
                    children: [
                      Text('PC'),
                      Text('2'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
