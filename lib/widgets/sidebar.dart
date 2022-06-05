import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'dart:io';
import 'package:oek_lise/Pages/developersite.dart';
import 'package:oek_lise/main.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xff2f2f2f),
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
                color: Color(0xffff7028),
                image: DecorationImage(
                  image: NetworkImage(
                      "https://www.google.com/url?sa=i&url=https%3A%2F%2Fappadvice.com%2Fgame%2Fapp%2Ffenerbah-c3-a7e-sk%2F1042281905&psig=AOvVaw0wV2_x09MotfXMUo5rCSnv&ust=1654358221677000&source=images&cd=vfe&ved=0CAwQjRxqFwoTCOCm6OXSkfgCFQAAAAAdAAAAABAJ"),
                )),
            child: Center(
              child: Text(
                'Ana Menü',
                style: TextStyle(color: Color(0xFF2f2f2f), fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home,color: Colors.white),

            title: const Text('Ana Sayfa',style: TextStyle(
              color: Colors.white
            ),),
            onTap: () => {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => MyApp()))
            },
          ),
          ListTile(
            leading: const Icon(Icons.developer_board,color: Colors.white,),
            title: const Text('Geliştirici Web Sitesi',style: TextStyle(
                color: Colors.white
            )),
            onTap: () => {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Developer()))
            },
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app,color: Colors.white),
            title: const Text('Çıkış',style: TextStyle(
                color: Colors.white
            )),
            onTap: () {
              exit(0);
            },
          ),
        ],
      ),
    );
  }
}
