import 'package:flutter/material.dart';
import './widgets/kotak_warna.dart';

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
          title: Text('Extract Widget'),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              KotakWarna(text: "KUNING", warna: Colors.amber),
              KotakWarna(text: "MERAH", warna: Colors.red),
              KotakWarna(text: "BIRU", warna: Colors.lightBlue),
              KotakWarna(text: "PURPLE", warna: Colors.deepPurple),
              KotakWarna(text: "PINK", warna: Colors.pinkAccent),
              KotakWarna(text: "PEACH", warna: Colors.orangeAccent),
            ],
          ),
        ),
      ),
    );
  }
}
