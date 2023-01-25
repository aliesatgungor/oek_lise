import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:oek_lise/Pages/10.S%C4%B1n%C4%B1f/10.s%C4%B1n%C4%B1f.dart';
import 'package:oek_lise/Pages/11.S%C4%B1n%C4%B1f/11.S%C4%B1n%C4%B1f.dart';
import 'package:oek_lise/Pages/12.S%C4%B1n%C4%B1f/12.s%C4%B1n%C4%B1f.dart';
import 'package:oek_lise/Pages/9.Sinif/9.sinif.dart';
import 'package:oek_lise/widgets/sidebar.dart';
import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isAndroid) {
    await AndroidInAppWebViewController.setWebContentsDebuggingEnabled(true);
  }

  runApp(MaterialApp(home: new MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Color(0xFF2f2f2f),
        appBar: AppBar(
          title: Text("Online Eğitim Köprüsü Lise"),
          backgroundColor: Color(0xFFFF7028),
        ),
        drawer: NavDrawer(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  height: height * 0.40, child: Image.asset("lib/icon.jpg")),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    surfaceTintColor: Color(0xFFFF7028),
                    primary: Color(0xFFFF7028),
                    minimumSize: Size(width * 0.85, height * 0.10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    )),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Sinif9()));
                },
                child: Text("9.Sınıf"),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    surfaceTintColor: Color(0xFFFF7028),
                    primary: Color(0xFFFF7028),
                    minimumSize: Size(width * 0.85, height * 0.10)),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Sinif10()));
                },
                child: Text("10.Sınıf"),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    surfaceTintColor: Color(0xFFFF7028),
                    primary: Color(0xFFFF7028),
                    minimumSize: Size(width * 0.85, height * 0.10)),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Sinif11()));
                },
                child: Text("11.Sınıf"),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    surfaceTintColor: Color(0xFFFF7028),
                    primary: Color(0xFFFF7028),
                    minimumSize: Size(width * 0.85, height * 0.10)),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Sinif12()));
                },
                child: Text("12.Sınıf"),
              )
            ],
          ),
        ));
  }
}
