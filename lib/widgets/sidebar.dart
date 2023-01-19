import 'package:flutter/material.dart';

import 'dart:io';
import 'package:oek_lise/Pages/developersite.dart';
import 'package:oek_lise/main.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xff2f2f2f),
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
                color: Color(0xffff7028),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://i.ytimg.com/vi/LEL5Kb8tz3Y/hqdefault.jpg"))),
            child: Center(
              child: Text(
                'Ana Menü',
                style: TextStyle(color: Color(0xFF2f2f2f), fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home, color: Colors.white),
            title: const Text(
              'Ana Sayfa',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () => {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => MyApp()))
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.developer_board,
              color: Colors.white,
            ),
            title: const Text('Geliştirici Web Sitesi',
                style: TextStyle(color: Colors.white)),
            onTap: () => {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Developer()))
            },
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app, color: Colors.white),
            title: const Text('Çıkış', style: TextStyle(color: Colors.white)),
            onTap: () {
              exit(0);
            },
          ),
        ],
      ),
    );
  }
}
