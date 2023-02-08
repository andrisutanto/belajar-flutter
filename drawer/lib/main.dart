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

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(20),
              width: double.infinity,
              height: 150,
              color: Colors.teal,
              child: Text(
                "Dashboard Menu",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  ListTile(
                    onTap: () {
                      print("Menu Home");
                    },
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    onTap: () {
                      print("Menu Cart");
                    },
                    leading: Icon(Icons.shopping_cart),
                    title: Text("Cart"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    onTap: () {
                      print("Menu Home");
                    },
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    onTap: () {
                      print("Menu Cart");
                    },
                    leading: Icon(Icons.shopping_cart),
                    title: Text("Cart"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    onTap: () {
                      print("Menu Home");
                    },
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    onTap: () {
                      print("Menu Cart");
                    },
                    leading: Icon(Icons.shopping_cart),
                    title: Text("Cart"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    onTap: () {
                      print("Menu Home");
                    },
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    onTap: () {
                      print("Menu Cart");
                    },
                    leading: Icon(Icons.shopping_cart),
                    title: Text("Cart"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    onTap: () {
                      print("Menu Home");
                    },
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    onTap: () {
                      print("Menu Cart");
                    },
                    leading: Icon(Icons.shopping_cart),
                    title: Text("Cart"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    onTap: () {
                      print("Menu Home");
                    },
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    onTap: () {
                      print("Menu Cart");
                    },
                    leading: Icon(Icons.shopping_cart),
                    title: Text("Cart"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    onTap: () {
                      print("Menu Home");
                    },
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    onTap: () {
                      print("Menu Cart");
                    },
                    leading: Icon(Icons.shopping_cart),
                    title: Text("Cart"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    onTap: () {
                      print("Menu Home");
                    },
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    onTap: () {
                      print("Menu Cart");
                    },
                    leading: Icon(Icons.shopping_cart),
                    title: Text("Cart"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    onTap: () {
                      print("Menu Home");
                    },
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    onTap: () {
                      print("Menu Cart");
                    },
                    leading: Icon(Icons.shopping_cart),
                    title: Text("Cart"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    onTap: () {
                      print("Menu Home");
                    },
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    onTap: () {
                      print("Menu Cart");
                    },
                    leading: Icon(Icons.shopping_cart),
                    title: Text("Cart"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    onTap: () {
                      print("Menu Home");
                    },
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    onTap: () {
                      print("Menu Cart");
                    },
                    leading: Icon(Icons.shopping_cart),
                    title: Text("Cart"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
