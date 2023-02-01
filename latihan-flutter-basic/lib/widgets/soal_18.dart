import 'dart:math';

import 'package:flutter/material.dart';

class Soal18 extends StatelessWidget {
  const Soal18({
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
      body: ListView.builder(
        padding: EdgeInsets.all(20),
        itemCount: 25,
        itemBuilder: (context, index) {
          if (index % 2 == 0) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 150,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Hello ${index + 1}",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            );
          } else {
            return Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 150,
                    color: Colors.amber,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Hello ${index + 1}",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
