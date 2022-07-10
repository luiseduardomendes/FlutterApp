import 'package:flutter/material.dart';
import 'package:my_app/app_controller.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            const Text('Tema escuro: '),
            Switch(
                value: AppController.instance.isThemeDark,
                onChanged: (value) {
                  AppController.instance.changeTheme();
                })
            
          ],
        )
      ),
    );
  }
}
