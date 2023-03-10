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
              backgroundImage: NetworkImage(
                  'data:image/jpeg;base64,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'),
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
