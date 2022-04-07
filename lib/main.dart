// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  //debugPaintSizeEnabled = false; // Set to true for visual layout
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const showCard = true; // Set to false to show Stack

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guata-Peli',
      home: Container(
        decoration: BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/images/fondo2.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          backgroundColor: Color.fromARGB(106, 250, 250, 250),
          appBar: AppBar(
            backgroundColor: Colors.yellow,
            title: const Text('Guata-Peli'),
          ),
          body: Center(child: buildCard()),
        ),
      ),
    );
  }

  // #docregion Card
  Widget buildCard() {
    return SingleChildScrollView(
      child: SizedBox(
        height: 500,
        width: 500,
        child: Card(
          child: Column(
            children: [
              ListTile(
                title: const Text(
                  'Bienvenido!!!',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                subtitle: const Text('cibernauta'),
                leading: Icon(
                  Icons.movie,
                  color: Colors.red[500],
                ),
              ),
              const Divider(),
              ListTile(
                title: Column(
                  children: <Widget>[
                    Image.asset('assets/images/palomitas.jpg'),
                  ],
                ),
              ),
              Center(
                child: Text("Hellouuu"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
