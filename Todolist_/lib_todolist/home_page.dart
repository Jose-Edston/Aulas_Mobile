import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List tarefas = ['Estudar', 'Ir para a academia', 'Jogar'];
  TextEditingController _nomeTarefa = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To do List'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        // O listView.Builder espera dois parametros obrigatórios, o itemCount que é a quantidade de vezes que vai repetir e o itemBuilder vai ser uma função e o Index fica a posição que ele está se baseando dentro do laço
        child: ListView.builder(
          itemCount: tarefas.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(tarefas[index]),
              trailing: IconButton(
                onPressed: () {
                  //  o setState é sempre para atualizar diretamente na tela, ou seja, ao fazer a ação ele atualiza a página
                  setState(() {
                    tarefas.removeAt(index);
                  });

                  // esse widget abaixo faz subi uma barrinha abaixo em preto informando que a ação foi feita, no caso do exemplo informando que foi excluido
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Tarefa Excluida com Sucesso!!'),
                      duration: Duration(seconds: 1),
                    ),
                  );
                },
                icon: Icon(Icons.delete),
              ),
            );
          },
        ),
      ),

      // Esse widget é para adicionar o "rodapé" no app, como se fosse o Footer no web.
      bottomNavigationBar: BottomAppBar(
        color: Colors.blueGrey,
        height: 40,
        // Esse widget faz o efeito de contornar o elemento que tiver dentro do BottomAppBar
        shape: CircularNotchedRectangle(),
      ),
      // Esse widget abaixo ele faz a diração ou local na tela onde ficará o botão, o centerDocked é praficar dentro do "footer"
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // Essa widget ele gera um botao embaixo com um + dentro de um circulo
      floatingActionButton: FloatingActionButton(
        mini: true, //pra deixar o botão pequeno
        onPressed: () {
          print('Salvo');
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('Adicionar Tarefa'),
                content: TextField(
                  controller: _nomeTarefa,
                ),
                actions: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      _nomeTarefa.clear();
                    },
                    child: Text('Cancelar'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        tarefas.add(_nomeTarefa.text);
                        _nomeTarefa.clear();
                      });
                      Navigator.pop(context);
                    },
                    child: Text('Salvar'),
                  ),
                ],
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
