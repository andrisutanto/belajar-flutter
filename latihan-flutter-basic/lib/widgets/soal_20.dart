import 'dart:math';

import 'package:flutter/material.dart';

class Soal20 extends StatelessWidget {
  const Soal20({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: FlutterLogo(),
        title: Text("Text Judul"),
        centerTitle: false,
        actions: [
          IconButton(
              onPressed: () {
                print("Klik More");
              },
              icon: Icon(Icons.more_vert))
        ],
      ),
      body: Stack(
        children: [
          Container(
            width: 250,
            height: 250,
            color: Colors.green,
          ),
          Container(
            width: 220,
            height: 220,
            color: Colors.red,
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.purple,
          ),
          Container(
            width: 170,
            height: 170,
            color: Colors.amber,
          ),
          Container(
            width: 140,
            height: 140,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
