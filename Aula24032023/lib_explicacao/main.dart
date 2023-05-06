import 'dart:html';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List conselhos = [
    "Conhece-te a ti mesmo",
    "Viva o momento presente",
    "A felicidade está dentro de si",
    "O amor é a resposta",
    "Aprenda com o passado, mas não viva nele",
    "Não se preocupe com o que os outros pensam de você",
    "Seja grato pelo que tem, ao invés de reclamar pelo que não tem",
    "A simplicidade é a chave para a felicidade",
    "A verdadeira riqueza está nas experiências, não nas posses",
    "Aceite o que não pode mudar, mude o que não pode aceitar",
    "Seja a mudança que deseja ver no mundo",
    "Não julgue as pessoas sem antes conhecê-las",
    "O medo é apenas uma ilusão, enfrente-o",
    "O perdão é a chave para a liberdade emocional",
    "Viva a vida com coragem e ousadia",
  ];

  void gerarConselho() {
    var gerarNumero = Random().nextInt(conselhos.length);
    while (conselhos.contains(gerarNumero)) {
      gerarNumero = Random().nextInt(conselhos.length);
    }
    var conselhosorteado = conselhos[gerarNumero];
    setState(() {
      palavra = conselhosorteado;
    });
    print(gerarNumero);
  }

  var palavra = "Clique abaixo para gerar o conselho";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Conselheiro - HITCH'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        // width: double.infinity,   -> Outra maneira de fazer o container ficar com 100% da tela
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/logo.png'),
              radius: 40, //esse é para aumentar o tamanho da imagem
            ),
            Text(
              palavra,
              textAlign: TextAlign.justify,
            ),
            ElevatedButton(
              onPressed: gerarConselho,
              child: Text('Gerar'),
            )
          ],
        ),
      ),
    );
  }
}
