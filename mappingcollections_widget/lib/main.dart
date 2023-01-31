import 'dart:math';

import 'package:flutter/material.dart';
import './widgets/kotak_warna.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // List<KotakWarna> allItems = List.generate(
  //     10,
  //     (index) => KotakWarna(
  //           text: "Kotak - ${index + 1}",
  //           warna: Color.fromARGB(
  //             255,
  //             200 + Random().nextInt(256),
  //             200 + Random().nextInt(256),
  //             200 + Random().nextInt(256),
  //           ),
  //         ));

  List<Map<String, dynamic>> data = List.generate(
    10,
    (index) => {
      "text": "Kotak - ${index + 1}",
      "color": Color.fromARGB(
        255,
        200 + Random().nextInt(256),
        200 + Random().nextInt(256),
        200 + Random().nextInt(256),
      ),
    },
  );

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
            //children: allItems, ---> ini kalau widget bisa langsung dimasukkan, kalau data tdk bisa
            children: data
                .map(
                  (e) => KotakWarna(
                    text: e["text"],
                    warna: e["color"],
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
