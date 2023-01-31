import 'dart:math';

import 'package:flutter/material.dart';

class Soal23 extends StatelessWidget {
  const Soal23({
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                ClipOval(
                  child: Container(
                    width: 270,
                    height: 270,
                    color: Colors.amber,
                  ),
                ),
                Container(
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(250 / 2),
                      border: Border.all(
                        color: Colors.white,
                        width: 10,
                      ),
                      color: Colors.grey,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://picsum.photos/seed/picsum/500/500"),
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Hello World",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.underline,
              ),
            )
          ],
        ),
      ),
    );
  }
}
