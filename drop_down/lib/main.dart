import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List data = [
    {
      "judul": "Pilihan ke - 1",
      "data": 1,
    },
    {
      "judul": "Pilihan ke - 2",
      "data": 2,
    },
    {
      "judul": "Pilihan ke - 3",
      "data": 3,
    },
    {
      "judul": "Pilihan ke - 4",
      "data": 4,
    },
  ];

  late int dataAwal;

  @override
  void initState() {
    // TODO: implement initState
    dataAwal = data[0]['data'];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dropdown"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: DropdownButton(
            value: dataAwal,
            items: data
                .map(
                  (e) => DropdownMenuItem<int>(
                    child: Text("${e['judul']}"),
                    //value ini untuk mendapatkan nilai dari yang di klik
                    value: e['data'] as int,
                  ),
                )
                .toList(),
            onChanged: (value) {
              setState(() {
                dataAwal = value!;
              });
              //print(value);
            },
          ),
        ),
      ),
    );
  }
}
