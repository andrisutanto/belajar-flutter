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
        backgroundColor: Colors.amber.shade100,
        appBar: AppBar(
          backgroundColor: Colors.red.shade800,
          title: Text('Aplikasi Pertamaku'),
          centerTitle: true,
        ),
        body: Center(
          // child: Image(
          //   image: AssetImage('assets/nesia.png'),
          // ),
          child: Image.asset('assets/nesia.png'),
        ),
      ),
    );
  }
}
