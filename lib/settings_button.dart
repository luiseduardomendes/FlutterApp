import 'package:flutter/material.dart';

class SettingsButton extends StatefulWidget {
  int userId;
  SettingsButton({Key? key, required this.userId}) : super(key: key);

  @override
  State<SettingsButton> createState() => _SettingsButtonState();
}

class _SettingsButtonState extends State<SettingsButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/home/settings');
        },
        child: Column(
          children: const [
            Spacer(),
            Icon(Icons.settings, size: 50),
            Text('Configuações'),
            Spacer(),
          ],
        ));
  }
}
