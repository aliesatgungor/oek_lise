import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:oek_lise/Pages/9.Sinif/fizik.dart';
import 'package:oek_lise/widgets/sidebar.dart';
import 'dart:async';
import 'dart:io';
import 'matematik.dart';
import 'geometri.dart';

import 'package:oek_lise/main.dart';

class Sinif9 extends StatefulWidget {
  Sinif9({Key? key}) : super(key: key);
  @override
  _Sinif9State createState() => _Sinif9State();
}

class _Sinif9State extends State<Sinif9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("9.Sınıf"),
        ),
        drawer: NavDrawer(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Matematik9()));
                  },
                  child: Text("Matematik")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Geometri9()));
                  },
                  child: Text("Geometri")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Fizik9()));
                  },
                  child: Text("Fizik"))
            ],


          ),
        ));
  }
}
