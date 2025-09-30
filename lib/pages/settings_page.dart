import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        ListTile(
          leading: Icon(Icons.security_outlined),
          title: Text('Privacy & Security'),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.notifications_none_rounded),
          title: Text('Notifications'),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.color_lens_outlined),
          title: Text('Appearance'),
        ),
      ],
    );
  }
}


