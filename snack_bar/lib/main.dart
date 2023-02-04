import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
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

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Snackbar"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  "hapus data berhasil",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                action: SnackBarAction(
                  label: "Cancel",
                  onPressed: () {
                    print("Tidak jadi dihapus");
                  },
                  textColor: Colors.red,
                ),
                backgroundColor: Colors.amber[300],
                duration: Duration(seconds: 3),
                margin: EdgeInsets.all(20),
                behavior: SnackBarBehavior.floating,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
              ),
            );
          },
          child: Text("Show Snackbar"),
        ),
      ),
    );
  }
}
