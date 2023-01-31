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

  // List<Map<String, dynamic>> data = List.generate(
  //   10,
  //   (index) => {
  //     "text": "Kotak - ${index + 1}",
  //     "color": Color.fromARGB(
  //       255,
  //       200 + Random().nextInt(256),
  //       200 + Random().nextInt(256),
  //       200 + Random().nextInt(256),
  //     ),
  //   },
  // );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Extract Widget'),
          ),
          body: GridView.builder(
            padding: EdgeInsets.all(10),
            itemCount: 50,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemBuilder: (context, index) => Container(
              color: Color.fromARGB(
                255,
                60 + Random().nextInt(151),
                60 + Random().nextInt(151),
                60 + Random().nextInt(151),
              ),
            ),
          )),
    );
  }
}
