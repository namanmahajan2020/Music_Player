import 'package:flutter/material.dart';
import 'package:music_player/pages/settings_page.dart';

class MyDarwer extends StatelessWidget {
  const MyDarwer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          DrawerHeader(child: Center(child: Icon(Icons.music_note, size: 40))),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 25),
            child: ListTile(
              title: Text("H O M E"),
              leading: Icon(Icons.home),
              onTap: () => Navigator.pop(context),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: ListTile(
              title: Text("S E T T I N G S"),
              leading: Icon(Icons.settings),
              onTap:
                  () => {
                    Navigator.pop(context),
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SettingsPage()),
                    ),
                  },
            ),
          ),
        ],
      ),
    );
  }
}
