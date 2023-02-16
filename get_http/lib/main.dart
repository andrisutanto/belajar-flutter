import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late String id, email, name;

  @override
  void initState() {
    id = "Belum ada data";
    email = "Belum ada data";
    name = "Belum ada data";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HTTP GET"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "ID: $id",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              "Email: $email",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              "Name: $name",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () async {
                var myresponse =
                    await http.get(Uri.parse("https://reqres.in/api/users/10"));
                if (myresponse.statusCode == 200) {
                  print("Berhasil get data");
                  Map<String, dynamic> data =
                      json.decode(myresponse.body) as Map<String, dynamic>;
                  print(data["data"]);
                  setState(() {
                    id = data["data"]["id"].toString();
                    email = data["data"]["email"].toString();
                    name =
                        "${data["data"]["first_name"]} ${data["data"]["last_name"]}";
                  });
                } else {
                  print("Error ${myresponse.statusCode}");
                  setState(() {
                    id = "Error ${myresponse.statusCode}";
                    email = "Error ${myresponse.statusCode}";
                    name = "Error ${myresponse.statusCode}";
                  });
                }
              },
              child: Text("GET DATA"),
            ),
          ],
        ),
      ),
    );
  }
}
