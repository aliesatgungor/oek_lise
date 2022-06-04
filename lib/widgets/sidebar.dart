import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'dart:io';

import 'package:oek_lise/main.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                  image: NetworkImage(
                      "https://www.google.com/url?sa=i&url=https%3A%2F%2Fappadvice.com%2Fgame%2Fapp%2Ffenerbah-c3-a7e-sk%2F1042281905&psig=AOvVaw0wV2_x09MotfXMUo5rCSnv&ust=1654358221677000&source=images&cd=vfe&ved=0CAwQjRxqFwoTCOCm6OXSkfgCFQAAAAAdAAAAABAJ"),
                )),
            child: Center(
              child: Text(
                'Ana Menü',
                style: TextStyle(color: Colors.white, fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Ana Sayfa'),
            onTap: () => {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => MyApp()))
            },
          ),
          ListTile(
            leading: const Icon(Icons.developer_board),
            title: const Text('Geliştirici Web Sitesi'),
            onTap: () => {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => MyApp()))
            },
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Çıkış'),
            onTap: () {
              exit(0);
            },
          ),
        ],
      ),
    );
  }
}
