import 'package:flutter/material.dart';
import 'dart:math';

enum Jogada { pedra, papel, tesoura }

class JogoJokenpo extends StatefulWidget {
  @override
  _JogoJokenpoState createState() => _JogoJokenpoState();
}

class _JogoJokenpoState extends State<JogoJokenpo> {
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
        title: Text('Jokenpo'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Escolha do App:',
            style: TextStyle(fontSize: 20.0),
          ),
          Icon(
            _iconeEscolha(escolhaApp),
            size: 100.0,
          ),
          SizedBox(height: 30.0),
          Text(
            'Escolha do Jogador:',
            style: TextStyle(fontSize: 20.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.crop_square, size: 100.0),
                onPressed: () => jogar(Jogada.pedra),
              ),
              IconButton(
                icon: Icon(Icons.filter_none, size: 100.0),
                onPressed: () => jogar(Jogada.papel),
              ),
              IconButton(
                icon: Icon(Icons.content_cut, size: 100.0),
                onPressed: () => jogar(Jogada.tesoura),
              ),
            ],
          ),
          SizedBox(height: 30.0),
          Text(
            'Resultado: $resultado',
            style: TextStyle(fontSize: 20.0),
          ),
        ],
      ),
    );
  }

  IconData _iconeEscolha(Jogada escolha) {
    switch (escolha) {
      case Jogada.pedra:
        return Icons.crop_square;
      case Jogada.papel:
        return Icons.filter_none;
      case Jogada.tesoura:
        return Icons.content_cut;
      default:
        return Icons.help;
    }
  }
}
