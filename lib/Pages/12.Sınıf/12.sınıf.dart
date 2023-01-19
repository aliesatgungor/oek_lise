import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:oek_lise/Pages/12.S%C4%B1n%C4%B1f/biyoloji.dart';
import 'package:oek_lise/Pages/12.S%C4%B1n%C4%B1f/biyolojitest.dart';
import 'package:oek_lise/Pages/12.S%C4%B1n%C4%B1f/cograftatest.dart';
import 'package:oek_lise/Pages/12.S%C4%B1n%C4%B1f/cografya.dart';
import 'package:oek_lise/Pages/12.S%C4%B1n%C4%B1f/fizik.dart';
import 'package:oek_lise/Pages/12.S%C4%B1n%C4%B1f/fiziktest.dart';
import 'package:oek_lise/Pages/12.S%C4%B1n%C4%B1f/kimya.dart';
import 'package:oek_lise/Pages/12.S%C4%B1n%C4%B1f/kimyatest.dart';
import 'package:oek_lise/Pages/12.S%C4%B1n%C4%B1f/matematik.dart';
import 'package:oek_lise/Pages/12.S%C4%B1n%C4%B1f/matematiktest.dart';
import 'package:oek_lise/Pages/12.S%C4%B1n%C4%B1f/tarih.dart';
import 'package:oek_lise/Pages/12.S%C4%B1n%C4%B1f/tarihtest.dart';
import 'package:oek_lise/Pages/12.S%C4%B1n%C4%B1f/matematiktest.dart';
import 'dart:ui';

import '../../widgets/sidebar.dart';

class Sinif12 extends StatefulWidget {
  const Sinif12({Key? key}) : super(key: key);
  @override
  _Sinif12State createState() => _Sinif12State();
}

class _Sinif12State extends State<Sinif12> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: const Text("12.Sınıf"),
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
                          minimumSize: Size(width * 0.35, height * 0.06)),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Matematik10()));
                      },
                      child: const Text("Matematik")),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          surfaceTintColor: Color(0xFFFF7028),
                          primary: Color(0xFFFF7028),
                          minimumSize: Size(width * 0.35, height * 0.06)),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => MatematikTest10()));
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
                          minimumSize: Size(width * 0.35, height * 0.06)),
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Kimya10()));
                      },
                      child: const Text("Kimya")),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          surfaceTintColor: Color(0xFFFF7028),
                          primary: Color(0xFFFF7028),
                          minimumSize: Size(width * 0.35, height * 0.06)),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => KimyaTest10()));
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
                          minimumSize: Size(width * 0.35, height * 0.06)),
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Fizik10()));
                      },
                      child: const Text("Fizik")),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          surfaceTintColor: Color(0xFFFF7028),
                          primary: Color(0xFFFF7028),
                          minimumSize: Size(width * 0.35, height * 0.06)),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => FizikTest10()));
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
                          minimumSize: Size(width * 0.35, height * 0.06)),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Biyoloji10()));
                      },
                      child: const Text("Biyoloji")),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          surfaceTintColor: Color(0xFFFF7028),
                          primary: Color(0xFFFF7028),
                          minimumSize: Size(width * 0.35, height * 0.06)),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => BiyolojiTest10()));
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
                          minimumSize: Size(width * 0.35, height * 0.06)),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Cografya10()));
                      },
                      child: const Text("Coğrafya")),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          surfaceTintColor: Color(0xFFFF7028),
                          primary: Color(0xFFFF7028),
                          minimumSize: Size(width * 0.35, height * 0.06)),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => CografyaTest10()));
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
                          minimumSize: Size(width * 0.35, height * 0.06)),
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Tarih10()));
                      },
                      child: const Text("Tarih")),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          surfaceTintColor: Color(0xFFFF7028),
                          primary: Color(0xFFFF7028),
                          minimumSize: Size(width * 0.35, height * 0.06)),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => TarihTest10()));
                      },
                      child: const Text("Tarih Test"))
                ],
              ),
            ],
          ),
        ));
  }
}
