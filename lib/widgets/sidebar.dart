import 'package:flutter/material.dart';

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
                  image: NetworkImage("https://www.google.com/url?sa=i&url=https%3A%2F%2Fappadvice.com%2Fgame%2Fapp%2Ffenerbah-c3-a7e-sk%2F1042281905&psig=AOvVaw0wV2_x09MotfXMUo5rCSnv&ust=1654358221677000&source=images&cd=vfe&ved=0CAwQjRxqFwoTCOCm6OXSkfgCFQAAAAAdAAAAABAJ"),
                )
                ),
            child: Center(
              child: Text(
                'Ana Menü',
                style: TextStyle(color: Colors.white, fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.input),
            title: const Text('OŞGELDİNEEEEZ'),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(Icons.verified_user),
            title: const Text('PROFİL'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('AYARLAR'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.border_color),
            title: const Text('GERİ BİLDİRİM VER'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('ÇIKIŞ YAP'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}