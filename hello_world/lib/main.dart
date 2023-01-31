import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //backgroundColor: Color(0xFF0a85ab),
        backgroundColor: Colors.amber.shade300,
        body: Center(child: Text("Hello World")),
      ),
    );
  }
}
