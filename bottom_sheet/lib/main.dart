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
        title: Text("Bottom Sheet"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                isDismissible: false,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                builder: (context) {
                  return Container(
                    height: 300,
                    child: ListView(
                      children: [
                        ListTile(
                          onTap: () => print("Klik Photo"),
                          leading: Icon(Icons.photo),
                          title: Text("Photo"),
                        ),
                        ListTile(
                          onTap: () => print("Klik Music"),
                          leading: Icon(Icons.music_note),
                          title: Text("Music"),
                        ),
                        ListTile(
                          onTap: () => print("Klik Video"),
                          leading: Icon(Icons.video_call),
                          title: Text("Video"),
                        ),
                        ListTile(
                          onTap: () => print("Klik Share"),
                          leading: Icon(Icons.share),
                          title: Text("Share"),
                        ),
                        ListTile(
                          onTap: () => Navigator.pop(context),
                          leading: Icon(Icons.cancel),
                          title: Text("Cancel"),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            child: Text("Show Buttom Sheet"),
          ),
        ),
      ),
    );
  }
}
