import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

TextEditingController _nome = TextEditingController();

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Digite seu nome'),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        width: double.infinity,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextField(
            controller: _nome,
            decoration: InputDecoration(
              label: Text('Nome'),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              print(_nome.text);
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => SecondPage(
                    texto: texto + _nome.text,
                  ),
                ),
              );
            },
            child: Text('Segunda Page'),
          )
        ]),
      ),
    );
    );
  }
}
