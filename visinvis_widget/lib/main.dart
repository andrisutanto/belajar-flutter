import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Judul App'),
          ),
          body: GridView(
            padding: EdgeInsets.only(
              top: 10,
              bottom: 10,
              left: 10,
              right: 10,
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 2 / 1,
            ),
            children: [
              Container(
                color: Colors.amber,
              ),
              Container(
                color: Colors.deepPurple,
              ),
              Container(
                color: Colors.pink,
              ),
              Container(
                color: Colors.lightGreenAccent,
              ),
              Container(
                color: Colors.amber,
              ),
              Container(
                color: Colors.deepPurple,
              ),
              Container(
                color: Colors.blueGrey,
              ),
              Container(
                color: Colors.lightGreenAccent,
              ),
              Container(
                color: Colors.amber,
              ),
              Container(
                color: Colors.deepPurple,
              ),
              Container(
                color: Colors.pink,
              ),
              Container(
                color: Colors.lightGreenAccent,
              ),
            ],
          )),
    );
  }
}
