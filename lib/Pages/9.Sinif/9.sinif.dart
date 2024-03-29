import 'package:flutter/material.dart';
import 'package:oek_lise/Pages/9.Sinif/biyolojitest.dart';
import 'package:oek_lise/Pages/9.Sinif/cograftatest.dart';
import 'package:oek_lise/Pages/9.Sinif/cografya.dart';
import 'package:oek_lise/Pages/9.Sinif/fizik.dart';
import 'package:oek_lise/Pages/9.Sinif/fiziktest.dart';
import 'package:oek_lise/Pages/9.Sinif/kimyatest.dart';
import 'package:oek_lise/Pages/9.Sinif/matematiktest.dart';
import 'package:oek_lise/Pages/9.Sinif/tarihtest.dart';
import 'package:oek_lise/widgets/sidebar.dart';
import 'matematik.dart';
import 'kimya.dart';
import 'biyoloji.dart';
import 'tarih.dart';

class _Sinif9State extends State<Sinif9> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
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
                        minimumSize: Size(width * 0.35, height * 0.06)
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Matematik9()));
                      },
                      child: const Text("Matematik")),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        surfaceTintColor: Color(0xFFFF7028),
                        primary: Color(0xFFFF7028),
                          minimumSize: Size(width * 0.35, height * 0.06)
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => MatematikTest9()));
                      },
                      child: const Text("Matematik Test"))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        surfaceTintColor: Color(0xFFFF7028),
                        primary: Color(0xFFFF7028),
                          minimumSize: Size(width * 0.35, height * 0.06)
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
                          minimumSize: Size(width * 0.35, height * 0.06)
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => KimyaTest9()));
                      },
                      child: const Text("Kimya Test"))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        surfaceTintColor: Color(0xFFFF7028),
                        primary: Color(0xFFFF7028),
                          minimumSize: Size(width * 0.35, height * 0.06)
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
                          minimumSize: Size(width * 0.35, height * 0.06)
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => FizikTest9()));
                      },
                      child: const Text("Fizik Test"))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        surfaceTintColor: Color(0xFFFF7028),
                        primary: Color(0xFFFF7028),
                          minimumSize: Size(width * 0.35, height * 0.06)
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Biyoloji9()));
                      },
                      child: const Text("Biyoloji")),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        surfaceTintColor: Color(0xFFFF7028),
                        primary: Color(0xFFFF7028),
                          minimumSize: Size(width * 0.35, height * 0.06)
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => BiyolojiTest9()));
                      },
                      child: const Text("Biyoloji Test"))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        surfaceTintColor: Color(0xFFFF7028),
                        primary: Color(0xFFFF7028),
                          minimumSize: Size(width * 0.35, height * 0.06)
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Cografya9()));
                      },
                      child: const Text("Coğrafya")),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        surfaceTintColor: Color(0xFFFF7028),
                        primary: Color(0xFFFF7028),
                          minimumSize: Size(width * 0.35, height * 0.06)
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => CografyaTest9()));
                      },
                      child: const Text("Coğrafya Test"))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        surfaceTintColor: Color(0xFFFF7028),
                        primary: Color(0xFFFF7028),
                          minimumSize: Size(width * 0.35, height * 0.06)
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Tarih9()));
                      },
                      child: const Text("Tarih")),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        surfaceTintColor: Color(0xFFFF7028),
                        primary: Color(0xFFFF7028),
                          minimumSize: Size(width * 0.35, height * 0.06)
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => TarihTest9()));
                      },
                      child: const Text("Tarih Test"))
                ],
              ),
            ],
          ),
        ));
  }
}

class Sinif9 extends StatefulWidget {
  const Sinif9({Key? key}) : super(key: key);
  @override
  _Sinif9State createState() => _Sinif9State();
}
