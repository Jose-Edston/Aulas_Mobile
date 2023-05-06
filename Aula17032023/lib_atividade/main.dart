import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Column(
        children: [
          Container(
            width: 300,
            child: Image(
                image: NetworkImage(
                    'https://o.remove.bg/downloads/96d13369-d56f-4f7c-b96d-4fbf8d0a28bf/hamburgueria-brabus-logo-removebg-preview.png')),
          ),
          Container(
            width: 300,
            child: Center(child: Text('Restaurant App')),
          ),
          Container(
            width: 300,
            child: Image(
              image: NetworkImage(
                  'https://o.remove.bg/downloads/3ee477c5-2631-4559-bfe0-9cc8f4e42870/230446-removebg-preview.png'),
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            child: Center(
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Online Order',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    )),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(350, 40),
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            child: Center(
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Book a Table',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    )),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(350, 40),
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            child: Center(
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Give Feedback',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    )),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(350, 40),
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
