import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 20.0,
      child: Column(
        children: const [
          UserAccountsDrawerHeader(
            accountName: Text('Ogunniyi Emmanuel'),
            accountEmail: Text('ogunniyisdoiq774"gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.black,
              child: Text('Emmy'),
            ),
          ),
          ListTile(
            title: Text('Inbox'),
            leading: Icon(Icons.inbox),
          ),
          Divider(
            height: 0.2,
          ),
          ListTile(
            title: Text('08065526504'),
            leading: Icon(Icons.call),
          ),
          Divider(
            height: 0.2,
          ),
          ListTile(
            title: Text('Promo'),
            leading: Icon(Icons.local_offer),
          ),
          Divider(
            height: 0.2,
          ),
          ListTile(
            title: Text(
              'Log Out',
              style: TextStyle(color: Colors.red),
            ),
            leading: Icon(Icons.logout),
          ),
          Divider(
            height: 0.2,
          ),
        ],
      ),
    );
  }
}
