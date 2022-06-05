import 'package:flutter/material.dart';
import 'package:oek_lise/Pages/9.Sinif/fizik.dart';
import 'package:oek_lise/widgets/sidebar.dart';
import 'matematik.dart';
import 'geometri.dart';
import 'biyoloji.dart';
import 'tarih.dart';

class Sinif9 extends StatefulWidget {
  const Sinif9({Key? key}) : super(key: key);
  @override
  _Sinif9State createState() => _Sinif9State();
}

class _Sinif9State extends State<Sinif9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("9.Sınıf"),
        ),
        drawer: const NavDrawer(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Matematik9()));
                  },
                  child: const Text("Matematik")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Kimya9()));
                  },
                  child: const Text("Kimya")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Fizik9()));
                  },
                  child: const Text("Fizik")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Biyoloji9()));
                  },
                  child: const Text("Biyoloji")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Tarih9()));
                  },
                  child: const Text("Coğrafya")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Tarih9()));
                  },
                  child: const Text("Tarih")),
            ],
          ),
        ));
  }
}
