import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:oek_lise/Pages/9.Sinif/9.sinif.dart';
import 'package:oek_lise/widgets/sidebar.dart';
import 'dart:async';
import 'dart:io';

import 'package:flutter_inappwebview/flutter_inappwebview.dart';


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isAndroid) {
    await AndroidInAppWebViewController.setWebContentsDebuggingEnabled(true);
  }

  runApp(MaterialApp(
      home: new MyApp()
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Online Eğitim Köprüsü Lise")),
        drawer: Drawer(
          child: Column(
            children: [
              TextButton(onPressed: (){}, child: Text("sa"))
            ],
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                ElevatedButton(
                    onPressed: (){
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => Sinif9()));
                    },
                    child: Text("9.Sınıf"),
                )
            ],
          ),
        )
    );
  }
}