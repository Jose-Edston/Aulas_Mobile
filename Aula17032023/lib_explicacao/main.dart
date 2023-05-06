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
      body: Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: 200),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(20)),
          child: ElevatedButton(
              style: ButtonStyle(),
              onPressed: () {
                print('Clicou Aqui');
              },
              child: Text("Click Aqui"))

          // PARTE TERCEIRA / FORMA DE FAZER
          // Image.asset('assets/images/Scooby.jpg')

          // PARTE SEGUNDA / FORMA DE FAZER
          //   Image(
          //     image: NetworkImage(
          //       'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKPZi0grIFCOQ1v3_WCD3vY1KgkAaFOi6C1M7HDQ_0PrfLbyf-knmUI_IslHuvIiadLI4&usqp=CAU'),
          // )

          // PARTE PRIMEIRA / FORMA DE FAZER
          //   child: Text(
          //     'Titulo',
          //     style: TextStyle(
          //       color: Colors.white,
          //       fontSize: 50,
          //       fontWeight: FontWeight.bold,
          //     ),
          //   ),
          // ),
          ),
    );
  }
}
