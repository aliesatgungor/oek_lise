import 'package:flutter/material.dart';

import 'package:oek_lise/widgets/sidebar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text('Liseler İçin Online Eğitim Köprüsü'),
      ),
      body: Center(
        child: Text('Online Eğitim Köprüsü'),
      ),
    );
  }
}