import 'package:flutter/material.dart';
import 'package:oek_lise/Pages/9.Sinif/cografya.dart';
import 'package:oek_lise/Pages/9.Sinif/fizik.dart';
import 'package:oek_lise/Pages/9.Sinif/kimyatest.dart';
import 'package:oek_lise/widgets/sidebar.dart';
import 'matematik.dart';
import 'kimya.dart';
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
          backgroundColor: Color(0xFFFF7028),
        ),
        drawer: const NavDrawer(),
        backgroundColor: Color(0xFF2f2f2f),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        surfaceTintColor: Color(0xFFFF7028),
                        primary: Color(0xFFFF7028),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Matematik9()));
                      },
                      child: const Text("Matematik")),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        surfaceTintColor: Color(0xFFFF7028),
                        primary: Color(0xFFFF7028),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Matematik9()));
                      },
                      child: const Text("Matematik"))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        surfaceTintColor: Color(0xFFFF7028),
                        primary: Color(0xFFFF7028),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Kimya9()));
                      },
                      child: const Text("Kimya")),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        surfaceTintColor: Color(0xFFFF7028),
                        primary: Color(0xFFFF7028),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => KimyaTest9()));
                      },
                      child: const Text("Kimya Test"))
                ],
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    surfaceTintColor: Color(0xFFFF7028),
                    primary: Color(0xFFFF7028),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Fizik9()));
                  },
                  child: const Text("Fizik")),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    surfaceTintColor: Color(0xFFFF7028),
                    primary: Color(0xFFFF7028),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Biyoloji9()));
                  },
                  child: const Text("Biyoloji")),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    surfaceTintColor: Color(0xFFFF7028),
                    primary: Color(0xFFFF7028),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Cografya9()));
                  },
                  child: const Text("Coğrafya")),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    surfaceTintColor: Color(0xFFFF7028),
                    primary: Color(0xFFFF7028),
                  ),
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
